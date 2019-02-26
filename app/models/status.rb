# frozen_string_literal: true

class Status  < ApplicationRecord
  belongs_to :board
  has_many :cards, -> { order(position: :asc) }, dependent: :destroy

  acts_as_list scope: :board
end
