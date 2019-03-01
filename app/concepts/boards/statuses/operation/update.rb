module Boards::Statuses::Operation
  class Update < Trailblazer::Operation
    step Model(::Status, :find_by)

    step Contract::Build(constant: Boards::Statuses::Contract::Create)
    step Contract::Validate()
    step Contract::Persist(method: :sync)

    step :change_position

    def change_position(ctx, **)
      model.insert_at(ctx['contract.default'].position)
    end
  end
end
