module Api::ProductsHelper
  def all_products
    Product.all
  end

  def request_product
    Product.find_by(id: params[:id])
  end

  def handle_unprocessable_entity
    render json: { error: 'The operation could not be procesed. Try again.' }, status: :unprocessable_entity
  end

  def handle_not_found
    render json: { error: 'That resource was not found.' }, status: :not_found
  end
end
