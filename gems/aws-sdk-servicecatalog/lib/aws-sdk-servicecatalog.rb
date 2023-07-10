# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-servicecatalog/types'
require_relative 'aws-sdk-servicecatalog/client_api'
require_relative 'aws-sdk-servicecatalog/plugins/endpoints.rb'
require_relative 'aws-sdk-servicecatalog/client'
require_relative 'aws-sdk-servicecatalog/errors'
require_relative 'aws-sdk-servicecatalog/resource'
require_relative 'aws-sdk-servicecatalog/endpoint_parameters'
require_relative 'aws-sdk-servicecatalog/endpoint_provider'
require_relative 'aws-sdk-servicecatalog/endpoints'
require_relative 'aws-sdk-servicecatalog/customizations'

# This module provides support for AWS Service Catalog. This module is available in the
# `aws-sdk-servicecatalog` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     service_catalog = Aws::ServiceCatalog::Client.new
#     resp = service_catalog.accept_portfolio_share(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Service Catalog are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ServiceCatalog::Errors::ServiceError
#       # rescues all AWS Service Catalog API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ServiceCatalog

  GEM_VERSION = '1.84.0'

end
