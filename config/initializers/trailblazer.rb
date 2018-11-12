# frozen_string_literal: true

# enabled deprecations to avoid old style
# require "trailblazer/deprecation/call"
# require "trailblazer/deprecation/context"

require 'reform'
require 'reform/form/dry'
# require 'reform/form/coercion'
# require 'jsonapi/serializable'

Rails.application.configure do
  config.trailblazer.enable_loader = false
  config.trailblazer.application_controller = 'GraphqlController'
end
