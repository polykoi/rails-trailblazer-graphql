module Cards
  class CardType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :position, Integer, null: false
    field :board, Boards::BoardType, null: false
    field :status, Statuses::StatusType, null: false
  end
end
