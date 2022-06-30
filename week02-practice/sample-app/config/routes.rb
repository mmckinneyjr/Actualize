Rails.application.routes.draw do
  get "/hello_path", controller: "example_pages", action: "hello_method"
  get "/image_path", controller: "example_pages", action: "image_method"
  get "/array_path", controller: "example_pages", action: "array_method"
  get "/my_path", controller: "example_pages", action: "my_method"
  get "/my_path2", controller: "example_pages", action: "my_method2"
end
