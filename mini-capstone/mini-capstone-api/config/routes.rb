Rails.application.routes.draw do
  #Products routes
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  #Supplies routes
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  #User routes
  post "/users" => "users#create"

  #Session routes
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy"

  #Orders routes
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"
  delete "/orders/:id" => "orders#destroy"
end
