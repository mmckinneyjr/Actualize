Rails.application.routes.draw do
  get "actors/:id", controller: "actors", action: "actors_by_id"
  get "all", controller: "actors", action: "actors_all"

  get "movies" => "movies#index"
  get "movies/:id" => "movies#show"

  get "movies/:title" => "movies#by_title"
  get "/year" => "movies#by_year"

  get "actor/" => "actors#show_by_last_name"
  get "actor/:last_name" => "actors#show_by_last_name"
end
