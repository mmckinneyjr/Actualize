Rails.application.routes.draw do
  get "/fortune", controller: "fortune_pages", action: "fortune_teller"
end
