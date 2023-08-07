# frozen_string_literal: true

require_relative '../spec_helper'
require 'tempfile'

module Aws
  module S3
    describe Object do
      let(:client) { S3::Client.new(stub_responses: true) }
      let(:tmpdir) { Dir.tmpdir }

      describe '#download_file' do
        let(:path) { Tempfile.new('destination').path }

        let(:small_obj) do
          S3::Object.new(
            bucket_name: 'bucket',
            key: 'small',
            client: client
          )
        end

        let(:large_obj) do
          S3::Object.new(
            bucket_name: 'bucket',
            key: 'large',
            client: client
          )
        end

        let(:single_obj) do
          S3::Object.new(
            bucket_name: 'bucket',
            key: 'single',
            client: client
          )
        end

        let(:one_meg) { 1024 * 1024 }
        let(:small_file) { Tempfile.new('small-file') }
        let(:large_file) { Tempfile.new('large-file') }
        let(:single_part_file) { Tempfile.new('single-part-file') }
        let(:version_id) { 'a-fake-version-id' }

        before(:each) do
          allow(Dir).to receive(:tmpdir).and_return(tmpdir)

          allow(client).to receive(:head_object).with({
            bucket: 'bucket',
            key: 'small',
            checksum_mode: 'ENABLED',
            part_number: 1
          }).and_return(
            client.stub_data(
              :head_object,
              content_length: one_meg,
              parts_count: nil
            )
          )

          allow(client).to receive(:head_object).with({
            bucket: 'bucket',
            key: 'small',
            part_number: 1,
            checksum_mode: 'ENABLED',
            version_id: version_id
          }).and_return(
            client.stub_data(
              :head_object,
              content_length: one_meg,
              parts_count: nil
            )
          )

          allow(client).to receive(:head_object).with({
            bucket: 'bucket',
            key: 'large',
            checksum_mode: 'ENABLED',
            part_number: 1
          }).and_return(
            client.stub_data(
              :head_object,
              content_length: 5 * one_meg,
              parts_count: 4
            )
          )

          allow(client).to receive(:head_object).with({
            bucket: 'bucket',
            checksum_mode: 'ENABLED',
            key: 'large'
          }).and_return(
            client.stub_data(
              :head_object,
              content_length: 20 * one_meg
            )
          )

          allow(client).to receive(:head_object).with({
            bucket: 'bucket',
            key: 'single',
            checksum_mode: 'ENABLED',
            part_number: 1
          }).and_return(
            client.stub_data(
              :head_object,
              content_length: 15 * one_meg,
              parts_count: nil
            )
          )
        end

        it 'downloads single part files in Client#get_object' do
          expect(client).to receive(:get_object).with({
            bucket: 'bucket',
            key: 'small',
            checksum_mode: 'ENABLED',
            response_target: path
          }).exactly(1).times

          small_obj.download_file(path)
        end

        it 'download larger files in parts' do
          expect(client).to receive(:head_object).with({
            bucket: 'bucket',
            key: 'large',
            checksum_mode: 'ENABLED',
            part_number: 1
          }).exactly(1).times

          client.stub_responses(:get_object, -> (_ctx) {
            { body: 'body', content_range: 'bytes 0-4/4' }
          })

          large_obj.download_file(path)
        end

        it 'download larger files in ranges' do
          expect(client).to receive(:head_object).with({
            bucket: 'bucket',
            key: 'single',
            checksum_mode: 'ENABLED',
            part_number: 1
          }).exactly(1).times

          client.stub_responses(:get_object, -> (_ctx) {
            { body: 'body', content_range: 'bytes 0-4/4' }
          })

          single_obj.download_file(path)
        end

        it 'supports download object with version_id' do
          expect(client).to receive(:get_object).with({
            bucket: 'bucket',
            key: 'small',
            checksum_mode: 'ENABLED',
            version_id: version_id,
            response_target: path
          }).exactly(1).times

          small_obj.download_file(path, version_id: version_id)
        end

        it 'raises an error when checksum validation fails on single part' do
          client.stub_responses(:get_object, {body: 'body', checksum_sha1: 'invalid'})

          expect do
            small_obj.download_file(path)
          end.to raise_error(Aws::Errors::ChecksumError)
        end

        it 'raises an error when checksum validation fails on multipart' do
          client.stub_responses(:get_object, {body: 'body', checksum_sha1: 'invalid'})
          expect(Thread).to receive(:new).and_yield

          expect do
            large_obj.download_file(path)
          end.to raise_error(Aws::Errors::ChecksumError)
        end

        it 'calls on_checksum_validated on single part' do
          callback_data = {called: 0}
          client.stub_responses(
            :get_object,
            {body: 'body', checksum_sha1: 'Agg/RXngimEkJcDBoX7ket14O5Q='}
          )
          callback = proc do |_alg, _resp|
            callback_data[:called] += 1
          end

          small_obj.download_file(path, on_checksum_validated: callback)
          expect(callback_data[:called]).to eq(1)
        end

        it 'calls on_checksum_validated on multipart' do
          callback_data = {called: 0}
          client.stub_responses(
            :get_object,
            {
              body: 'body',
              content_range: 'bytes 0-4/4',
              checksum_sha1: 'Agg/RXngimEkJcDBoX7ket14O5Q='
            }
          )
          callback = proc do |_alg, _resp|
            callback_data[:called] += 1
          end

          large_obj.download_file(path, on_checksum_validated: callback)
          expect(callback_data[:called]).to eq(4)
        end

        it 'raises an error if an invalid mode is specified' do
          expect { large_obj.download_file(path, mode: 'invalid_mode') }
            .to raise_error(
              ArgumentError,
              'Invalid mode invalid_mode provided, mode should '\
              'be :single_request, :get_range or :auto'
            )
        end

        it 'raises an error if choose :get_range without :chunk_size' do
          expect { large_obj.download_file(path, mode: 'get_range') }
            .to raise_error(
              ArgumentError,
              'In :get_range mode, :chunk_size must be provided'
            )
        end

        it 'raises an error if :chunk_size is larger than file size' do
          expect { large_obj.download_file(path, chunk_size: 50 * one_meg) }
            .to raise_error(
              ArgumentError,
              ":chunk_size shouldn't exceed total file size."
            )
        end

        it 'raises an error if :on_checksum_validated is not callable' do
          expect { large_obj.download_file(path, on_checksum_validated: 'string') }
            .to raise_error(
              ArgumentError,
              'on_checksum_validated must be callable'
            )
        end

        it 'downloads the file in range chunks' do
          client.stub_responses(:get_object, ->(context) {
            ranges = context.params[:range].split('=').last.split('-')
            expect(ranges[1].to_i - ranges[0].to_i + 1).to eq(one_meg)
            { content_range: "bytes #{ranges[0]}-#{ranges[1]}/#{20 * one_meg}" }
          })

          large_obj.download_file(path, chunk_size: one_meg)
        end
      end
    end
  end
end
