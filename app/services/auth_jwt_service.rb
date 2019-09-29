class AuthJwtService
  JWT_SECRET = ENV['JWT_SECRET']
  
  attr_accessor_initialize :data

  def generate_token
    JWT.encode(token_data_with_expiration, JWT_SECRET, 'HS256')
  end

  def decode_and_validate
    begin
      @decoded_data = JWT.decode(data, JWT_SECRET, true, { algorithm: 'HS256' })
      try_to_find_api_user ? @api_user : false
    rescue => exception
      p exception
      return false
    end
  end

  private

  def token_data_with_expiration
    { data: data.id, exp: (Time.current + 1.day).to_i }
  end

  def try_to_find_api_user
    @api_user = Credential.find_by(id: @decoded_data[0]['data'].to_i)
  end
end
