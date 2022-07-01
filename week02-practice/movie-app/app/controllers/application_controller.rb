class ApplicationController < ActionController::API
  def actors_by_id
    actor = Actor.find_by(id: params["id"])
    render json: actor.as_json
  end

  def actors_all
    actor = Actor.all
    render json: actor.as_json
  end
end
