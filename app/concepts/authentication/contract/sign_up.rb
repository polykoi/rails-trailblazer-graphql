# frozen_string_literal: true

module Authentication::Contract
  class SignUp < Reform::Form
    PASSWORD_MIN_LENGTH = 6

    property :password, virtual: true
    property :email

    validation :default do
      required(:name).filled(:str?)
      required(:email).filled(:str?)
      required(:password).filled(
        :str?,
        min_size?: PASSWORD_MIN_LENGTH
      )
    end
  end
end
