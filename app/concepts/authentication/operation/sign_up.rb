# frozen_string_literal: true

module Authentication::Operation
  class SignUp < Trailblazer::Operation
    SESSION_EXPIRY = 24.hours.to_i

    step Contract::Build(constant: Authentication::Contract::SignUp)
    step Contract::Validate()

    step :create_user
    step :create_session

    def create_user(ctx, **)
      ctx[:model] = User.create(password: ctx['contract.default'].password,
                                email: ctx['contract.default'].email,
                                naem: ctx['contract.default'].name,
      )
    end

    def create_session(ctx, model:, **)
      id = model.id
      payload = { user_id: id }
      session = JWTSessions::Session.new(
        payload: payload,
        refresh_payload: payload,
        refresh_exp: SESSION_EXPIRY
      )
      ctx[:meta] = { tokens: session.login }
    end
  end
end
