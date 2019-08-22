# frozen_string_literal: true

module Authentication
  def self.included(base)
    base.class_eval do
      include JWTSessions::RailsAuthorization
    end
  end

  def current_user
    @current_user ||= found_access_token ? User.find_by(id: access_payload['user_id']) : nil
  end

  private

  def found_access_token
    raw_token = request_headers[JWTSessions.header_by('access')] || ""
    raw_token.split(" ")[-1]
  end

  def access_payload
    claims = respond_to?(:token_claims) ? token_claims : {}
    @_payload ||= JWTSessions::Token.decode(found_access_token, claims).first
  end
end
