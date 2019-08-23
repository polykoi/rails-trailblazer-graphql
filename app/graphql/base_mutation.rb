class BaseMutation < GraphQL::Schema::Mutation
  private

  def orchestrate(operation, field_name, options = {})
    result = operation.call(**options, current_user: context[:current_user])

    if result.success?
      {
        field_name => result[:model],
        meta: result[:meta],
        errors: []
      }
    else
      errors = result['result.contract.default']&.errors || result[:errors] || Reform::Form::Errors.new
      errors.add(result['model.find_by_key'], I18n.t('errors.not_found')) if result['result.model'].failure?

      {
        field_name => nil,
        meta: nil,
        errors: Lib::Service::ErrorsConverter.call(errors.messages)
      }
    end
  end
end
