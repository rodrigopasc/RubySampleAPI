module HandableErrorsConcern
  extend ActiveSupport::Concern

  included do
    rescue_from ActionController::ParameterMissing, with: :handle_missing_params

    def handle_missing_params(exception)
      render json: { error: "Parameter '#{exception.param}' is invalid or was not sent." }, status: :bad_request
    end
  end
end
