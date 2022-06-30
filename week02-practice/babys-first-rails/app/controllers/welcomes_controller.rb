class WelcomesController < ApplicationController
  def hello_method
    render json: { message: "Hello from welcomes controller!" }
  end

  def about_method
    render json: { message: "Of course my favorite programming languate is RUBY!!!!" }
  end
end
