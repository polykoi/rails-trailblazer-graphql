module Types
  class CardType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :board, BoardType, null: false
  end
end
