Rails.application.routes.draw do
  get "/articles" => "articles#index"
  get "/artmuseums" => "artmuseums#index"
end
