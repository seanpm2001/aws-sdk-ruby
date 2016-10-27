require_relative '../../spec_helper'

module Aws
  module Plugins
    describe SignatureV4 do

      Sigv4Client = ApiHelper.sample_service(metadata: {
        'signatureVersion' => 'v4',
        'endpointPrefix' => 'svc-name',
      }).const_get(:Client)

      let(:plugin) { SignatureV4.new }

      let(:options) {{
        region: 'us-east-1',
        access_key_id: 'akid',
        secret_access_key: 'secret',
      }}

      it 'raises an error when attempting to sign a request w/out credentials' do
        client = Sigv4Client.new(region: 'us-west-1')
        expect {
          client.example_operation
        }.to raise_error(Errors::MissingCredentialsError)
      end

      describe 'sigv4 signing name' do

        it 'accepts a sigv4 signing name configuration option' do
          client = Sigv4Client.new(options.merge(
            sigv4_name: 'name',
          ))
          expect(client.config.sigv4_name).to eq('name')
        end

        it 'defaults the sigv4 name to the endpoint prefix' do
          svc = ApiHelper.sample_service(metadata: {
            'signatureVersion' => 'v4',
            'endpointPrefix' => 'endpoint-prefix',
          })
          client = svc::Client.new(options)
          expect(client.config.sigv4_name).to eq('endpoint-prefix')
        end

        it 'prefers the signingName over endpointPrefix' do
          svc = ApiHelper.sample_service(metadata: {
            'signatureVersion' => 'v4',
            'endpointPrefix' => 'endpoint-prefix',
            'signingName' => 'signing-name',
          })
          client = svc::Client.new(options)
          expect(client.config.sigv4_name).to eq('signing-name')
        end

      end

      describe 'sigv4 signing region' do

        it 'defaults to us-east-1 for global endpoints' do
          client = Sigv4Client.new(options.merge(
            region: 'other-region',
            endpoint: 'https://svc-name.amazonaws.com'
          ))
          expect(client.config.sigv4_region).to eq('us-east-1')
        end

        it 'defaults to configured region if it can not be extracted' do
          client = Sigv4Client.new(options.merge(
            region: 'other-region',
            endpoint: 'https://localhost:3000'
          ))
          expect(client.config.sigv4_region).to eq('other-region')
        end

        it 'uses the specified region when no endpointPrefix is present' do
          svc = ApiHelper.sample_service(metadata: {
            'signatureVersion' => 'v4',
            'signingName' => 'signing-name',
            'endpointPrefix' => nil,
          })
          client = svc::Client.new(options.merge(
            region: 'eu-west-1',
            endpoint: 'http://uniqueness.svc.us-west-2.amazonaws.com',
          ))
          expect(client.config.sigv4_name).to eq('signing-name')
          expect(client.config.sigv4_region).to eq('eu-west-1')
        end

      end
    end
  end
end
