module Types
  class StatusType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :boards, [BoardType], null: false
  end
end
