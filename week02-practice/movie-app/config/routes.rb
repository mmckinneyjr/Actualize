Rails.application.routes.draw do
  get "actors/:id", controller: "actors", action: "actors_by_id"
  get "all", controller: "actors", action: "actors_all"
end
