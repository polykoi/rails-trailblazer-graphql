module Boards::Operation
  class Destroy < Trailblazer::Operation
    step Model(Board, :find_by)
    step Policy::Guard(Lib::Policy::BoardOwnerGuard.new)

    step :destroy

    def destroy(ctx, model:, **)
      model.destroy
    end
  end
end
