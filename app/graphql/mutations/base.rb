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
        errors = result['result.contract.default']&.errors || Reform::Form::Errors.new
        errors.add(:base, I18n.t('errors.not_found')) if result['result.model'].failure?

        {
          field_name => nil,
          errors: Lib::Service::ErrorsConverter.call(errors.messages)
        }
      end
    end
  end
end
