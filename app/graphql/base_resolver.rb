class BaseResolver < GraphQL::Schema::Resolver
  def orchestrate(operation, options = {})
    result = operation.call(options)
  end
end
