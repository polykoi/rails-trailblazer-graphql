module Mutations
  class CreateStatus < Mutations::Base
    argument :board_id, ID, required: true
    argument :name, String, required: true
    argument :position, Integer, required: true

    field :status, Types::StatusType, null: true
    field :errors, [Types::ErrorType], null: false

    def resolve(**params)
      orchestrate Boards::Statuses::Operation::Create, :status, params: params
    end
  end
end
