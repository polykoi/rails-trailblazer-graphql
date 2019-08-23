# frozen_string_literal: true

module Lib::Step
  class Rollback
    def self.call(_ctx, *)
      raise ActiveRecord::Rollback
    end
  end
end
