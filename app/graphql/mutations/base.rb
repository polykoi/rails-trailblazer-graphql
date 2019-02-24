module Mutations
  class Base < GraphQL::Schema::Mutation
    private

    def orchestrate(operation, field_name, options = {})
      result = operation.call(options)

      if result.success?
        {
          field_name => result[:model],
          errors: []
        }
      else
        {
          field_name => nil,
          errors: Lib::Service::ErrorsConverter.call(result['result.contract.default'].errors.messages)
        }
      end

    end
  end
end
