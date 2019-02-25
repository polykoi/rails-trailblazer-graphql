module Types
  class MutationType < GraphQL::Schema::Object
    field :create_board, mutation: Mutations::CreateBoard
    field :update_board, mutation: Mutations::UpdateBoard
    field :delete_board, mutation: Mutations::DeleteBoard
  end
end
