module Lib::Service
  class ErrorsConverter
    # potentially wrong due to reforms errors format
    # hope there would be no params nesting with GraphQL

    def self.call(errors)
      errors.map do |field, messages|
        messages.map do |message|
          compose_error(field, message)
        end
      end.flatten
    end

    private

    def self.compose_error(field, message)
      {
        path: ['attributes', field.to_s.camelize(:lower)],
        message: message
      }
    end
  end
end
