class Api::ProductsController < ::ApplicationController
  include HandableErrorsConcern
  include ::Api::ProductsHelper

  def index
    Rails.cache.fetch("api/products", expires_in: 24.hours) do
      render json: all_products, status: :ok
    end
  end

  def create
    if product_params
      begin
        product = Product.create({ name: params[:name], description: params[:description] })

        render json: product, status: :created
      rescue => error
        handle_unprocessable_entity
      end
    end
  end

  def show
    Rails.cache.fetch("api/products/#{params[:id]}", expires_in: 24.hours) do
      if request_product 
        render json: request_product, status: :ok
      else
        handle_not_found
      end
    end
  end

  def update
    if product_params
      if request_product
        begin
          request_product.update_columns(name: params[:name], description: params[:description])
  
          render json: request_product, status: :ok
        rescue
          handle_unprocessable_entity
        end
      else
        handle_not_found
      end
    end
  end

  def destroy
    if request_product
      request_product.destroy!

      head :no_content
    else
      handle_not_found
    end
  end

  private

  def product_params
    params.require([:name])
  end
end
