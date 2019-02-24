module Boards::Operation
  class Create < Trailblazer::Operation
    step Model(Board, :new)
    step Contract::Build(constant: Boards::Contract::Create)
    step Contract::Validate()
    step Contract::Persist()
  end
end
