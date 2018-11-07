# frozen_string_literal: true

module Constants
  module Shared
    RESERVED_WORDS = %w[account secure admin].freeze
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
    REDIRECT_TO_REGEX = %r{^\/[a-z0-9_\-\/]+$}i.freeze
    PASSWORD_REGEX = %r{(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9!\$%&,\(\)\*\+-\.\/;:<=>?\[\\\]\^_{|}~#"@]+}i.freeze
    PASSWORD_MIN_LENGTH = 6
  end
end
