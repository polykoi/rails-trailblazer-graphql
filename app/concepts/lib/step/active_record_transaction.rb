# frozen_string_literal: true

module Lib::Step
  class ActiveRecordTransaction
    def self.call((_ctx), *)
      ActiveRecord::Base.transaction { yield }
    end
  end
end
