# frozen_string_literal: true

module Authentication::Contract
  class SignUp < Reform::Form
    PASSWORD_MIN_LENGTH = 6

    property :first_name
    property :email
    property :password, readable: false

    validation :default do
      required(:first_name).filled(:str?)
      required(:email).filled(:str?)
      required(:password).filled(
        :str?,
        min_size?: PASSWORD_MIN_LENGTH
      )
    end
  end
end
