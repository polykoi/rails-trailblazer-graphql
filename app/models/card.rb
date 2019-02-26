# frozen_string_literal: true

class Card  < ApplicationRecord
  belongs_to :status
  has_one :board, through: :status

  acts_as_list scope: :status
end
