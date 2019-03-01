# frozen_string_literal: true

module Macro
  def self.Error(errors_hash)
    task = ->((ctx, flow_options), **) {
      ctx[:errors] ||= Reform::Form::Errors.new
      errors_hash.each do |attribute, messages|
        case messages
        when String
          ctx[:errors].add(attribute, message)
        when Array
          errors_array.each do |error|
            ctx[:errors].add(attribute, message)
          end
        else
          raise ArgumentError
        end
      end
      [Trailblazer::Activity::Right, [ctx, flow_options]]
    }

    { task: task, id: 'semantic' }
  end
end
