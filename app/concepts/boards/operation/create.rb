module Boards::Operation
  class Create < Trailblazer::Operation
    step Model(Board, :new)
    step Contract::Build(constant: Boards::Contract::Create)
    step Contract::Validate()
    step Wrap(Lib::Step::ActiveRecordTransaction) {
      step Contract::Persist()
      step :add_role
      fail Lib::Step::Rollback
    }

    def add_role(ctx, model:, current_user:, **)
      current_user.add_role('owner', model)
    end
  end
end
