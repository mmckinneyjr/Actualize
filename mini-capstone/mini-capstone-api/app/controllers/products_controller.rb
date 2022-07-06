class ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product.as_json(methods: [:friendly_created_at, :is_discounted?, :tax, :total])
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json(methods: [:friendly_created_at, :is_discounted?, :tax, :total])
  end

  def create
    product = Product.create(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
  end

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description

    product.save
    render json: product.as_json
  end

  def destroy
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.destroy
    render json: { message: "Product Successfully Deleted" }
  end
end
