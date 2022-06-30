

#### Create new app
```
rails new fortune-app --api --database=postgresql
```
#### Setup Configuration
```
echo "--api # Use API mode" >> ~/.railsrc
echo "--database=postgresql # Use the postgres database" >> ~/.railsrc
echo "--skip-test # Skip the Minitest framework" >> ~/.railsrc
echo "--skip-spring # Skip the Spring preloader" >> ~/.railsrc
```
#### Rails Commands
Create new app
```
rails new <app_folder_name>
```
Start up server
```
rails server
```
Create database
```
rails db:create
```
Create database model/schema
```
rails generate model Article title:string body:text
```
Migrate database
```
rails db:migrate
```
Sign into rails application console
```
rails console
```
Creates view controller
```
rails generate controller <name>
```

Add data to seed file to add to database
```
content = Content.new(item1: "item1", item2: "item2", item3: "item3")
content.save
```
<p align="center">or</p>

```
Content.create(item1: "item1", item2: "item2", item3: "item3")
```
```
rails db:seed

```
Removes database
```
rails db:drop
```

Links:
https://guides.rubyonrails.org/getting_started.html
https://github.com/piotrmurach/tty-table
