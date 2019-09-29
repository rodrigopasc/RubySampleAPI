class CheckProductsJob
  include Sidekiq::Worker

  def perform(*args)
    Product.unprocessed.find_each do |product|
      # This is just a boilerplate, so it only changes to processed true. But here it would have a more complex process.
      product.update_columns(processed: true)
    end
  end
end
