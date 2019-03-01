module Mutations
  class DestroyStatus < BaseMutations
    argument :id, ID, required: true

    field :status, Types::StatusType, null: true
    field :errors, [Types::ErrorType], null: false

    def resolve(**params)
      orchestrate Boards::Statuses::Operation::Destroy, :status, params: params
    end
  end
end
