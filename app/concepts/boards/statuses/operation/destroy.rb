module Boards::Statuses::Operation
  class Destroy < Trailblazer::Operation
    step Model(Status, :find_by)

    step :cards_absent?
    fail Macro::Error(base: I18n.t('status.must_be_empty'))
    step :destroy

    def cards_absent(ctx, model:, **)
      model.cards.empty?
    end

    def destroy(ctx, model:, **)
      model.destroy
    end
  end
end
