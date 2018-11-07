# frozen_string_literal: true

module Api
  module V1
    class BaseController < ActionController::API
      include JWTSessions::RailsAuthorization

      # def current_user
      #   @current_user ||= UserAccount.find_by(id: payload['user_account_id'])
      # end

      # def current_user!
      #   current_user || raise(ApplicationError::Unauthorized)
      # end
    end
  end
end
