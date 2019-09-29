module AuthHelper
  def deny_api_user
    render json: { error: 'User not found or not authorized.' }, status: :unauthorized
  end
end
