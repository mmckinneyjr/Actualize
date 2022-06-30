class ProductsController < ApplicationController
  def display_products
    product = Product.all
    render json: product.as_json
  end

  #What is inconvenient about this process?
  #this is SUPER obnoxious to have to list each individual product. billions of products????? (head explodes)
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

  def find_all
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end
end
