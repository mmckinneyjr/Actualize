Rails.application.routes.draw do
  get "/contact_one", controller: "contacts", action: "contact_one"
  get "/contact_all", controller: "contacts", action: "contact_all"
end
