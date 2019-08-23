module Lib
  module Policy
   class BoardOwnerGuard
    def call(_ctx, current_user:, model:, **)
      current_user.has_role?('owner', model)
    end
   end
  end
end
