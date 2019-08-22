module Authentication
  module Mutation
    class SignUp < BaseMutation
      argument :username, String, required: true
      argument :password, String, required: false

      field :user, Users::UserType, null: true
      field :meta, MetaType, null: true
      field :errors, [Types::ErrorType], null: false

      def resolve(**params)
        orchestrate Authentication::Operation::SignUp, :user, params: params
      end

      private

      class MetaType
        field :tokens, TokensType, null: false

        private

        class TokensType
          field :access, String, null: false
          field :refresh, String, null: false
        end
      end
    end
  end
end
