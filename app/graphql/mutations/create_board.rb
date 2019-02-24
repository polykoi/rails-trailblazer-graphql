module Mutations
  class CreateBoard < Mutations::Base
    argument :name, String, required: true
    argument :description, String, required: false

    field :board, Types::BoardType, null: true
    field :errors, [Types::ErrorType], null: false

    def resolve(**params)
      orchestrate Boards::Operation::Create, :board, params: params
    end
  end
end
# RailsTrailblazerGraphqlSchema.execute("query getBoards { boards {id name description} }")
# RailsTrailblazerGraphqlSchema.execute("query getBoards($boardId: ID!) { board(id: $boardId) {id name description} }", variables: { boardId: 2 })
# RailsTrailblazerGraphqlSchema.execute("mutation($name: String!, $description: String) { createBoard(name: $name, description: $description) { board {id name description} } }", variables: { name: 'Board 4' })
