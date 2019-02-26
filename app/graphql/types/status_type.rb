module Types
  class StatusType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :position, Integer, null: false
    field :board, BoardType, null: false
    field :cards, [CardType], null: true
  end
end
