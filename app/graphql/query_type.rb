class QueryType < GraphQL::Schema::Object
  # field :users, resolver: Users::Resolver::Index
  # field :user, resolver: Users::Resolver::Show
  field :current_user, resolver: Users::Resolver::CurrentUser
  field :board, BoardType, null: true do
    argument :id, ID, 'Id', required: true
  end
  field :card

  # def board(id:)
  #   Board.find_by(id: id)
  # end
end

# type user {
#   [Boards]
#   [Cards]
# }

# type users {
#   [Boards]
#   [Cards]
# }

# type current_user {
#   [Boards]
#   [Cards]
# }

# type board {
#   [Statuses]
#   [Cards]
#   [Users]
# }

# type card {
#   Board
#   Status
#   User
# }
