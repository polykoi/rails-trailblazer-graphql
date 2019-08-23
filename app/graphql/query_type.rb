class QueryType < GraphQL::Schema::Object
  # field :user, resolver: Users::Resolver::Show
  field :current_user, resolver: Users::Resolver::Current
  # field :board, BoardType, null: true do
    # argument :id, ID, 'Id', required: true
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
