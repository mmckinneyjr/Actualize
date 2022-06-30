class ProductsController < ApplicationController
  def display_products
    product = Product.all
    render json: product.as_json
  end
end
