
https://guides.rubyonrails.org/getting_started.html

Create new app
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
```
rails db:create
rails generate model Article title:string body:text
rails db:migrate

rails generate controller <name>
rails console
```

Add data to seed file to add to database
```
rails db:seed
```
Removes database
```
rails db:drop
```
