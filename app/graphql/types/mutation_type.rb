module Types
  class MutationType < GraphQL::Schema::Object
    field :create_board, mutation: Mutations::CreateBoard
  end
end
