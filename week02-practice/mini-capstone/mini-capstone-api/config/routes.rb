Rails.application.routes.draw do
  get "/products_page", controller: "products", action: "display_products"

  #What is inconvenient about this process?
  #this is super obnoxious to have to list each individual product. billions of products????? (head explodes)
  get "/deadpool_figure_page", controller: "products", action: "deadpool_figure"
  get "/ironman_figure_page", controller: "products", action: "ironman_figure"
  get "/game_page", controller: "products", action: "game"
end
