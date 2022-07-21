class RecipesController < ApplicationController
  def index
    key = Rails.application.credentials.api_app[:api_key]
    app_id = Rails.application.credentials.api_app[:api_id]

    response = HTTP.get("https://api.edamam.com/api/recipes/v2?type=public&q=chicken&app_id=#{app_id}&app_key=#{key}")

    render json: response.parse(:json)
  end
end
