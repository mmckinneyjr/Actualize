## Intro to Rails

We're going to create another rails app! Don't forget what we learned in class:

1. A user enters a url in the browser, triggering a web request.
2. Rails checks the url to see if it matches a defined route in the routes file.
3. If the route matches, Rails runs appropriate code in a controller.
4. The controller code renders a web response, in our case, as json.

### Creating a rails project

- Create a new rails app in your Actualize directory (OUTSIDE the independent practice repository) with `rails new babys-first-rails --api --database=postgresql`. This will make a new rails app in api mode with a postgres database.
- `cd` into your `babys-first-rails` folder.
- run `rails db:create` to make the database.
- run `rails server` and see what happens.
- This will start a server on `localhost:3000` head there in the browser and see what it says...

### Routing

- In the routes file we write logic to map our routes to controllers we will make.
- Let's say when a user sends a `GET` request to a welcome route, `/welcome_path`, we want the `welcomes` controller's `hello_method` action to run. In order to do that we could write:

```ruby
# config/routes.rb
get "/welcome_path", controller: "welcomes", action: "hello_method"
```

Try saving the file and heading to the correct route in the browser.

**Pro tip:** run `rails routes` in your the terminal (in a separate tab from where the server is running) to see a list of all the application's routes

### Controllers

If you did the last step correctly, you should see an error message: `*uninitialized constant WelcomesController*`. This means that we need to create a controller with the name `welcomes` as that is where we told our route to go in the first place!

- Run: `rails generate controller welcomes`

Reload the page again and find a different error message: `*The action 'hello_method' could not be found for WelcomesController*`. We have created the welcomes controller correctly, but there is no `hello_method` method defined. Let's make one:

```ruby
# app/controllers/welcomes_controller.rb
class WelcomesController < ApplicationController
    def hello_method
      render json: {message: "Hello from welcomes controller!"}
    end
end
```

Check out out your `/welcome_path` route in the browser one more time.

### Exercise

- Create a new route: a GET request to `/about_path` will hit the welcomes controller and trigger and about_method.
- Have the about_method render a json message that tells us about your favorite computing language.
- Your page should now display your favorite language!

## Deliverable

Create a new repository on github and connect it to your local `babys-first-rails` repository. This should be totally separate from the independent practice, Git add, commit, and push to the main branch to put your new rails project on github!

Once that's done, go to the babys_first_rails_solution.md file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "Adds today's homework"
$ git push origin *yourbranchname*
```
