class AuthController < ActionController::API
  include HandableErrorsConcern

  def create
    if auth_params
      if can_authenticate?
        authenticate_api_user
      else
        deny_api_user
      end
    end
  end

  private

  def can_authenticate?
    @api_user = Credential.find_by(username: params[:username])
    @api_user&.authenticate(params[:password])
  end

  def authenticate_api_user
    render json: { token: AuthJwtService.new(@api_user).generate_token, expire_at: date_to_expire }, status: :ok
  end

  def deny_api_user
    render json: { error: 'User not found or not allowed.' }, status: :unauthorized
  end

  def date_to_expire
    (Time.current + 1.day).strftime("%Y-%m-%d %H:%M")
  end

  def auth_params
    params.require([:username, :password])
  end
end
