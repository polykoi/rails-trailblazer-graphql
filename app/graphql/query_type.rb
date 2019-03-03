class QueryType < GraphQL::Schema::Object
  field :users, resolver: Users::Resolver::Index
  field :user, resolver: Users::Resolver::Show
  field :current_user, resolver: Users::Resolver::CurrentUser
  # field :boards, [BoardType], null: true
  # field :board, BoardType, null: true do
  #   argument :id, ID, 'Id', required: true
  # end


  # def boards
  #   Board.all
  # end

  # def board(id:)
  #   Board.find_by(id: id)
  # end
end
