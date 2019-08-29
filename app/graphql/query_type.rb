class QueryType < GraphQL::Schema::Object
  # field :user, resolver: Users::Resolver::Show
  field :current_user, resolver: Users::Resolver::Current
  # field :board, BoardType, null: true do
    # argument :id, ID, 'Id', required: true
  # end
end
