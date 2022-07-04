class MoviesController < ApplicationController
  def index
    movie = Movie.all
    render json: movie.as_json
  end

  def show
    movie = Movie.find_by(id: params["id"])
    render json: movie.as_json
  end

  def by_title
    movie = Movie.where("title LIKE ?", Movie.sanitize_sql_like(params[:title]) + "%")
    render json: movie.as_json
  end

  def by_year
    # movie = Movie.all
    # render json: movie.as_json
    movie = Movie.order(year: :DESC)
    render json: movie.as_json
  end
end
