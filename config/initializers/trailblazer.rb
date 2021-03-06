# frozen_string_literal: true

require 'reform'
require 'reform/form/dry'
require 'reform/form/coercion'

Reform::Form.class_eval do
  include Reform::Form::Dry
end

Dir[Rails.root.join('lib', 'macro', '**', '*.rb')].each { |file| require file }

Rails.application.configure do
  config.trailblazer.enable_loader = false
  config.trailblazer.application_controller = 'GraphqlController'
end
