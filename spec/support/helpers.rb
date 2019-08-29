# frozen_string_literal: true

module Helpers
  def session_tokens(account)
    payload = token_payload(account)
    JWTSessions::Session.new(payload: payload, refresh_payload: payload).login
  end

  def token_payload(account)
    { user_id: account.id }
  end

  def auth_header(account)
    "Bearer #{session_tokens(account)[:access]}"
  end
end
