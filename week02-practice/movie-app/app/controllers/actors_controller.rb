class ActorsController < ApplicationController
  def show_by_last_name
    actor = Actor.find_by(last_name: params["last_name"])
    render json: actor.as_json
  end
end
