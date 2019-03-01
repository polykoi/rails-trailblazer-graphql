module Types
  class ErrorType < GraphQL::Schema::Object
    field :message, String, null: false
    field :path, [String], null: false
  end
end
