module Statuses::Operation
  class Destroy < Trailblazer::Operation
    step Model(Status, :find_by)

    step :check_cards_present
    step :destroy

    def cards_absent(ctx, model:, **)
      model.cards.empty?
    end

    def destroy(ctx, model:, **)
      model.destroy
    end
  end
end
