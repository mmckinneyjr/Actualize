class MovieGenresController < ApplicationController
  def create
    moviegenre = MovieGenre.new(
      movie_id: params["movie_id"],
      genre_id: params["genre_id"],
    )

    if moviegenre.save
      render json: moviegenre.as_json
    else
      render json: { errors: moviegenre.errors.full_messages }
    end
  end
end
