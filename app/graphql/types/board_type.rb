module Types
  class BoardType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :statuses, [StatusType], null: true
    field :cards, [CardType], null: true
  end
end
