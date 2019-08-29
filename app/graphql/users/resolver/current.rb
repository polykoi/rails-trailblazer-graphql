module Users
  module Resolver
    class Current < Lib::AuthenticatedResolver
      type Users::UserType, null: true

      def resolve
        context[:current_user]
      end
    end
  end
end
