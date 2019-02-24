# frozen_string_literal: true

class Board < ApplicationRecord
  has_many :cards, dependent: :destroy
end
