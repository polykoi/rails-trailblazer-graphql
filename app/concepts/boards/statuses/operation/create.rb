module Boards::Statuses::Operation
  class Create < Trailblazer::Operation
    step Model(Board, :find_by_id, params_key: :board_id)

    step :model

    step Contract::Build(constant: Boards::Statuses::Contract::Create)
    step Contract::Validate()
    step Contract::Persist()

    def model(ctx, model:, **)
      ctx[:model] = model.build_status
    end
  end
end
