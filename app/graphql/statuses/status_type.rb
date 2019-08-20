module Statuses
  class StatusType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :position, Integer, null: false
    field :board, Boards::BoardType, null: false
    field :cards, [Cards::CardType], null: true
  end
end
