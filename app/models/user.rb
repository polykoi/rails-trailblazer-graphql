# frozen_string_literal: true

class User  < ApplicationRecord
  has_secure_password

  rolify

  has_many :user_roles, dependent: :destroy
  has_many :roles, through: :user_roles
  has_many :boards, through: :roles
end
