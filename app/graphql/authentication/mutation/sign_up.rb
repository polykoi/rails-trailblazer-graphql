module Authentication
  module Mutation
    class SignUp < BaseMutation
      argument :email, String, required: true
      argument :first_name, String, required: true
      argument :password, String, required: true

      field :user, Users::UserType, null: true
      field :meta, Authentication::MetaType, null: true
      field :errors, [ErrorType], null: false

      def resolve(**params)
        orchestrate Authentication::Operation::SignUp, :user, params: params
      end
    end
  end
end
