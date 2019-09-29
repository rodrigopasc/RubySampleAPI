class ApplicationController < ActionController::API
  include AuthHelper

  before_action :authenticate

  def authenticate
    @current_api_user = AuthJwtService.new(token).decode_and_validate
    deny_api_user unless @current_api_user
  end

  private

  def token
    request.headers[:authorization].remove('Bearer ') if request.headers[:authorization].present?
  end
end
