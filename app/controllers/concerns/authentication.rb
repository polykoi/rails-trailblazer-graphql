# frozen_string_literal: true

module Authentication
  def self.included(base)
    base.class_eval do
      include JWTSessions::RailsAuthorization

      # rescue_from JWTSessions::Errors::Unauthorized do
      #   head :unauthorized
      # end
    end
  end

  def current_user
    @current_user ||= found_token ? User.find_by(id: payload['user_id']) : nil
  end
end
