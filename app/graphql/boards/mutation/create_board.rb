module Boards
  module Mutation
    class CreateBoard < Lib::AuthenticatedMutation
      argument :name, String, required: true
      argument :description, String, required: false

      field :board, Boards::BoardType, null: true
      field :errors, [ErrorType], null: false

      def resolve(**params)
        orchestrate Boards::Operation::Create, :board, params: params
      end
    end
  end
end
# RailsTrailblazerGraphqlSchema.execute("query getBoards { boards {id name description} }")
# RailsTrailblazerGraphqlSchema.execute("query getBoards($boardId: ID!) { board(id: $boardId) {id name description} }", variables: { boardId: 2 })
# RailsTrailblazerGraphqlSchema.execute("mutation($name: String!, $description: String) { createBoard(name: $name, description: $description) { board {id name description} } }", variables: { name: 'Board 4' })
