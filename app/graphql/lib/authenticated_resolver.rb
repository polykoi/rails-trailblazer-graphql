module Lib
  class AuthenticatedResolver < BaseResolver
    def ready?(**args)
      if context[:current_user]
        true
      else
        raise GraphQL::ExecutionError.new('Authenticated users only')
      end
    end
  end
end
