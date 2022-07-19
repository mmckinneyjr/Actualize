## Link your updated movie-app below:
https://github.com/mmckinneyjr/Actualize/tree/main/week02-practice/movie-app

## Write the active record review solution queries below:

```ruby
#1. Create a variable called “order” and assign it the value of the first order in your database. You will need to call the class Order. To do this, type and enter: order = Order.first. Wasn’t that easy!?
order = Order.first

#2. Now with your variable order (which is the first order in your database), your order should have an associated user and product. Using only the variable you just created (order) output in your console the order’s product’s name. And on another line, it’s price.
order.product.name
  Product Load (8.2ms)  SELECT "products".* FROM "products" WHERE "products"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
=> "iPhone"                                                                                      
order.product.price
=> 0.9e3


#3. Now instead of creating a variable of just one order, create a variable called orders that holds an array of all the orders in your database. Then, using only orders and chaining, output in the console the last order’s product’s price.
orders = Order.all
  Order Load (0.7ms)  SELECT "orders".* FROM "orders"
=>                                                                                                                
[#<Order:0x000000010f4142d0                                                                                       
...                                                                                                               
orders.last.product.price
  Product Load (1.0ms)  SELECT "products".* FROM "products" WHERE "products"."id" = $1 LIMIT $2  [["id", 11], ["LIMIT", 1]]
=> 0.25e2                                                                          
 

#4. Using the same variable (orders) output the last order’s product’s first image’s image_url (if your app can only store one image, that’s fine, just display the one).
irb(main):011:0> orders.last.product.images.first
  Image Load (0.9ms)  SELECT "images".* FROM "images" WHERE "images"."product_id" = $1 ORDER BY "images"."id" ASC LIMIT $2  [["product_id", 11], ["LIMIT", 1]]                                                                                                 
=>                                                                                                      
#<Image:0x000000011180d470                                                                              
 id: 11,                                                                                                
 url:                                                                                                   
  "https://images.unsplash.com/photo-1591254674198-a316f1aa8301?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjZ8fHByb2R1Y3RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",                                        
 created_at: Mon, 11 Jul 2022 17:49:02.330723000 UTC +00:00,       
 updated_at: Mon, 11 Jul 2022 17:49:02.330723000 UTC +00:00,       
 product_id: 11>  

#5. Using the rails console, find out how many orders (try the .count method) the first user in the database has ordered. Also, what was the last thing he/she ordered? What was the price of it?

user = User.first
  User Load (3.7ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT $1  [["LIMIT", 1]]
=>                                                                     
#<User:0x0000000111cd81a8                                              
...                                                                    
user.orders.count
  Order Count (1.5ms)  SELECT COUNT(*) FROM "orders" WHERE "orders"."user_id" = $1  [["user_id", 1]]
=> 4                                                                                  
user.orders.last
  Order Load (0.8ms)  SELECT "orders".* FROM "orders" WHERE "orders"."user_id" = $1 ORDER BY "orders"."id" DESC LIMIT $2  [["user_id", 1], ["LIMIT", 1]]                                                                                     
=>                                                                                    
#<Order:0x0000000111ee92d0                                                            
 id: 4,                                                                               
 user_id: 1,                                                                          
 product_id: 5,                                                                       
 quantity: 4,                                                                         
 subtotal: 0.5334e4,                                                                  
 tax: 0.234e3,                                                                        
 total: 0.657e3,                                                                      
 created_at: Wed, 13 Jul 2022 17:39:52.649570000 UTC +00:00,                          
 updated_at: Wed, 13 Jul 2022 17:39:52.649570000 UTC +00:00>                          

                                                                                      
#6. Experiment. Starting with a record in your database (Order.last, Product.find_by(id: 2), User.first) and try chaining through your models to find connected data from a different model.
user.orders.first.product.supplier.name
  Order Load (0.7ms)  SELECT "orders".* FROM "orders" WHERE "orders"."user_id" = $1 ORDER BY "orders"."id" ASC LIMIT $2  [["user_id", 1], ["LIMIT", 1]]
  Product Load (0.3ms)  SELECT "products".* FROM "products" WHERE "products"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  Supplier Load (2.9ms)  SELECT "suppliers".* FROM "suppliers" WHERE "suppliers"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
=> "Apple"     

```







