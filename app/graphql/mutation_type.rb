class MutationType < GraphQL::Schema::Object
  field :create_board, mutation: Mutations::CreateBoard
  field :update_board, mutation: Mutations::UpdateBoard
  field :destroy_board, mutation: Mutations::DestroyBoard

  field :create_status, mutation: Mutations::CreateStatus
  field :update_status, mutation: Mutations::UpdateStatus
  field :destroy_status, mutation: Mutations::DestroyStatus
end
