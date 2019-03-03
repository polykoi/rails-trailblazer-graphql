# frozen_string_literal: true

JWTSessions.token_store = Rails.env.test? ? :memory : :redis
JWTSessions.algorithm = 'HS256'
JWTSessions.encryption_key = Rails.application.credentials.secret_jwt_encryption_key
