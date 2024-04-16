# frozen_string_literal: true

module CreateTokenAndDigest
  def create_token_by_base64
    SecureRandom.urlsafe_base64
  end

  def create_digest; end
end
