module Types
  class QueryType < GraphQL::Schema::Object
    field :boards, [BoardType], null: true
    field :board, BoardType, null: true do
      argument :id, ID, 'Id', required: true
    end
    field :boards, [CardType], null: true


    def boards
      Board.all
    end

    def board(id:)
      Board.find_by(id: id)
    end

    def cards
      Cards.all
    end
  end
end
