module Mutations
  class UpdateStatus < Mutations::Base
    argument :id, ID, required: true
    argument :name, String, required: true
    argument :position, Integer, required: true

    field :status, Types::StatusType, null: true
    field :errors, [Types::ErrorType], null: false

    def resolve(**params)
      orchestrate Boards::Statuses::Operation::Update, :status, params: params
    end
  end
end
