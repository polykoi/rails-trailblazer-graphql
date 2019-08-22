module Users
  class UserType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :email, String, null: false
    field :first_name, String, null: false
    field :boards, [Boards::BoardType], null: false
  end
end
