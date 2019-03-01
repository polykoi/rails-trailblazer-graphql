module Types
  class CardType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :position, Integer, null: false
    field :board, BoardType, null: false
    field :status, StatusType, null: false
  end
end
