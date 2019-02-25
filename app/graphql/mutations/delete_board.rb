module Mutations
  class DeleteBoard < Mutations::Base
    argument :id, ID, required: true

    field :board, Types::BoardType, null: true
    field :errors, [Types::ErrorType], null: false

    def resolve(**params)
      orchestrate Boards::Operation::Destroy, :board, params: params
    end
  end
end
