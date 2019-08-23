module Boards
  module Mutation
    class DestroyBoard < BaseMutations
      argument :id, ID, required: true

      field :board, Boards::BoardType, null: true
      field :errors, [ErrorType], null: false

      def resolve(**params)
        orchestrate Boards::Operation::Destroy, :board, params: params
      end
    end
  end
end
