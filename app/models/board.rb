# frozen_string_literal: true

class Board < ApplicationRecord
  has_many :statuses, -> { order(position: :asc) }, dependent: :destroy
  has_many :cards, through: :statuses
end
