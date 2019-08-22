module Authentication
  class MetaType < GraphQL::Schema::Object
    field :tokens, Authentication::TokensType, null: false
  end
end
