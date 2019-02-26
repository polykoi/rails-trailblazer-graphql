module Boards::Operation
  class Update < Trailblazer::Operation
    step Model(Board, :find_by)
    step Contract::Build(constant: Boards::Contract::Create)
    step Contract::Validate()
    step Contract::Persist()
  end
end
