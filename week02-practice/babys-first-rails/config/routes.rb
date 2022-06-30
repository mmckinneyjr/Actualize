Rails.application.routes.draw do
  get "/welcome_path", controller: "welcomes", action: "hello_method"
  get "/about_path", controller: "welcomes", action: "about_method"
end
