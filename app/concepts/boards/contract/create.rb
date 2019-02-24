module Boards::Contract
  class Create < Reform::Form
    feature Reform::Form::Dry

    NAME_MIN_LENGTH = 3
    NAME_MAX_LENGTH = 100
    DESCRIPTION_MAX_LENGTH = 1000

    property :name
    property :description

    validation do
      required(:name).filled(:str?, min_size?: NAME_MIN_LENGTH, max_size?: NAME_MAX_LENGTH)
      optional(:description).maybe(:str?, max_size?: DESCRIPTION_MAX_LENGTH)

      validate(name_unique: [:name]) do |name|
        Board.where(name: name).empty?
      end
    end
  end
end
