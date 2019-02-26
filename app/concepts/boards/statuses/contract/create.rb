module Boards::Statuses::Contract
  class Create < Reform::Form
    feature Reform::Form::Dry

    NAME_MIN_LENGTH = 3
    NAME_MAX_LENGTH = 100

    property :name
    property :position

    validation do
      required(:name).filled(:str?, min_size?: NAME_MIN_LENGTH, max_size?: NAME_MAX_LENGTH)

      validate(name_unique: [:name]) do |name|
        Statuses.where(name: name).empty?
      end
    end
  end
end
