Rails.application.routes.draw do
  resources :users

  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy"
end
