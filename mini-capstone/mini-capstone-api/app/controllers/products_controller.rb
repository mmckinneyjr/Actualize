class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    if params[:category]
      category = Category.find_by(name: params[:category])
      @category = category.products
    else
      @products = Product.all
    end
    render :index
    #render json: product.as_json(methods: [:friendly_created_at, :is_discounted?, :tax, :total])
  end

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      # image_url: params["image_url"],
      description: params["description"],
      supplier_id: params["supplier_id"],
    )
    if @product.save
      render template: "products/show"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params["id"])

    @product.name = params["name"] || product.name
    @product.price = params["price"] || product.price
    # @product.image_url = params["image_url"] || product.image_url
    @product.description = params["description"] || product.description

    if @product.save
      render template: "products/show"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params["id"])

    product.destroy
    render json: { message: "Product Successfully Deleted" }
  end
end
