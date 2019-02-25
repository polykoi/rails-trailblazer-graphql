module Mutations
  class UpdateBoard < Mutations::Base
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :description, String, required: false

    field :board, Types::BoardType, null: true
    field :errors, [Types::ErrorType], null: false

    def resolve(**params)
      orchestrate Boards::Operation::Update, :board, params: params
    end
  end
end
