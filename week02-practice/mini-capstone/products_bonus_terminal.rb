require "http"
require "tty/table"

response = HTTP.get("http://localhost:3000/products_page")
products = response.parse(:json)
puts ""

# products.each do |product|
#   puts "Product ID: #{product["id"]}"
#   puts "Name: #{product["name"]}"
#   puts "Price: $#{product["price"]}.00"
#   puts "Image URL: #{product["image_url"]}"
#   puts "Description: #{product["description"]}"
#   puts ""
# end

table = TTY::Table.new(["ID", "Name", "Price", "Image_URL", "Description"], [])

products.each do |product|
  temp_table = []
  temp_table << product["id"]
  temp_table << product["name"]
  temp_table << "$#{product["price"]}.00"
  temp_table << "#{product["image_url"][0..30].gsub(/\s\w+$/, "...")}"
  temp_table << "#{product["description"][0..70].gsub(/\s\w+$/, "...")}"
  table << temp_table
end

puts table.render(:ascii)
