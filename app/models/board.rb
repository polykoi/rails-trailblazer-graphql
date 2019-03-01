# frozen_string_literal: true

class Board < ApplicationRecord
  resourcify
  has_many :users, through: :roles

  has_many :statuses, -> { order(position: :asc) }, dependent: :destroy
  has_many :cards, through: :statuses
end
