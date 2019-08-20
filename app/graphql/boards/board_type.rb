module Boards
  class BoardType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :statuses, [::Statuses::StatusType], null: true
    field :cards, [Cards::CardType], null: true
  end
end
