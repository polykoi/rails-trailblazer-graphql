module Boards::Operation
  class Destroy < Trailblazer::Operation
    step Model(Board, :find_by)

    step :destroy

    def destroy(ctx, model:, **)
      model.destroy
    end
  end
end
