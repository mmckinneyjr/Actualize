# Week 04 Notes

## Part 1
Add to Gemfile the 'bcrypt' gem (gem hashes passwords):
• How to use: add 'has_secure_password' to model
````
gem 'bcrypt'
````
Create a model for User
````
rails generate model User name email password_digest
rails db:migrate
````
In users model add:
````
has_secure_password
validates :email, presence: true, uniqueness: true
````
Create 'users' controller
````
rails generate controller users
````
Add to controller
````
def create
  user = User.new(
    name: params[:name],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
  )
  if user.save
    render json: { message: "User created successfully" }, status: :created
  else
    render json: { errors: user.errors.full_messages }, status: :bad_request
  end
end
````
Create route to users controller
````
post "/users" => "users#create"
````
Now a request can be made
````
### Users create (signup)
POST http://localhost:3000/users.json
Content-Type: application/json

{
  "name": "Test name",
  "email": "test@test.com",
  "password": "password",
  "password_confirmation": "password"
}
````
## Part 2
Add to Gemfile the 'jwt' gem (gem creates JSON web tokens):
````
gem 'jwt'
````
Create 'sessions' controller
````
rails generate controller sessions
````
Add to controller
````
def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    jwt = JWT.encode(
      {
        user_id: user.id, # the data to encode
        exp: 24.hours.from_now.to_i # the expiration time
      },
      Rails.application.credentials.fetch(:secret_key_base), # the secret key
      "HS256" # the encryption algorithm
    )
    render json: { jwt: jwt, email: user.email, user_id: user.id }, status: :created
  else
    render json: {}, status: :unauthorized
  end
end
````
Create route to sessions controller
````
post "/sessions" => "sessions#create"
````
Create session request
````
### Sessions create (login)
POST http://localhost:3000/sessions.json
Content-Type: application/json

{
  "email": "test@test.com",
  "password": "password"
}
````
## Part 3





#### Links:
Guide: Rails API Authentication
https://github.com/actualize-chi-2022-05/resources/blob/main/guide_rails_api_authentication.md
