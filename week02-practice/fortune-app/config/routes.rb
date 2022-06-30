Rails.application.routes.draw do
  get "/fortune", controller: "fortune_pages", action: "fortune_teller"
  get "/page_path", controller: "fortune_pages", action: "page_counts"
end
