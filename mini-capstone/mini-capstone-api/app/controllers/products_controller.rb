class ProductsController < ApplicationController
  # def display_products
  #   product = Product.all
  #   render json: product.as_json
  # end

  # #What is inconvenient about this process?
  # #this is SUPER obnoxious to have to list each individual product. billions of products????? (head explodes)
  # def deadpool_figure
  #   product = Product.all
  #   render json: product[3].as_json
  # end

  # def ironman_figure
  #   product = Product.all
  #   render json: product[2].as_json
  # end

  # def game
  #   product = Product.all
  #   render json: product[6].as_json
  # end

  # def find_all
  #   product = Product.find_by(id: params["id"])
  #   render json: product.as_json
  # end

  def index
    product = Product.all
    render json: product.as_json
  end

  def find_product
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end

  def show
    prod_id = params["id"]
    product = Product.find_by(id: params["id"])
    render json: product.as_json
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
