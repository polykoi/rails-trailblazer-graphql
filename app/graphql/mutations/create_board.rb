module Mutations
  class CreateBoard < GraphQL::Schema::Mutation
    argument :name, String, required: true
    argument :description, String, required: false

    field :board, Types::BoardType, null: true
    field :errors, [String], null: false

    def resolve(name:, description: nil)

      binding.pry

      board = Board.create(name: name, description: description)
      if board.save
        {
          board: board,
          errors: []
        }
      else
        {
          board: nil,
          errors: ['lol fail']
        }
      end

    end
  end
end
# RailsTrailblazerGraphqlSchema.execute("query getBoards { boards {id name description} }")
# RailsTrailblazerGraphqlSchema.execute("query getBoards($boardId: ID!) { board(id: $boardId) {id name description} }", variables: { boardId: 2 })
# RailsTrailblazerGraphqlSchema.execute("mutation($name: String!, $description: String) { createBoard(name: $name, description: $description) { board {id name description} } }", variables: { name: 'Board 4' })
