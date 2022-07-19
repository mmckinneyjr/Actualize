class ArtmuseumsController < ApplicationController
  def index
    response = HTTP.get("https://api.harvardartmuseums.org/#{params["resource"]}?apikey=9e82a133-7ed0-461c-9a32-f5afae4ca31c")
    render json: response.parse(:json)
  end
end
