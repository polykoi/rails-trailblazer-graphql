# frozen_string_literal: true

class User  < ApplicationRecord
  has_secure_password

  rolify

  has_many :users_roles, dependent: :destroy
  has_many :roles, through: :users_roles
  has_many :boards, through: :roles, source: :resource, source_type: Board.name
end
