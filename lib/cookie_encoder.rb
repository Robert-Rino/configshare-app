# Provides custom encoding and decoding for cookies with strong encryption
class CookieEncoder
  def encode(cookies)
    SecureMessages.encrypt(JSON::JWT.new(cookies)) if cookies
  end

  def decode(str)
    JSON::JWT.decode(SecureMessages.decrypt(str)) if str
  end
end