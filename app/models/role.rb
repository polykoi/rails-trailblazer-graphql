class Role < ApplicationRecord
  has_many :user_roles, dependent: :destroy
  has_many :users, through: :user_roles

  belongs_to :resource,
            polymorphic: true

  validates :resource_type,
            inclusion: { :in => Rolify.resource_types }
  validates :name, inclusion: { in: Constants::Role::ALLOWED_NAMES }

  scopify
end
