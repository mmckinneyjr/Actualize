Rails.application.routes.draw do
  get "/products_page", controller: "products", action: "display_products"
end
