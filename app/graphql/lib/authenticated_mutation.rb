module Lib
  class AuthenticatedMutation < BaseMutation
    def ready?(**args)
      if context[:current_user]
        true
      else
        [false, { errors: [{ message: 'Authenticated users only', path: ['base'] }] }]
      end
    end
  end
end
