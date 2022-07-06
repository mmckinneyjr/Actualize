Rails.application.routes.draw do
  get "/phrase/" => "params#to_upcase"
  get "/phrase/:phrase" => "params#to_upcase"
  post "/phrase/" => "params#to_upcase"
end
