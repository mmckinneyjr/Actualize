class ParamsController < ApplicationController
  def to_upcase
    phrase = params["phrase"].upcase
    render json: phrase.as_json
  end
end
