module Authentication
  class TokensType < GraphQL::Schema::Object
    field :access, String, null: false
    field :refresh, String, null: false
  end
end
