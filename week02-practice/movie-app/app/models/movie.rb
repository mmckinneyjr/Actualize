class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  validates :title, presence: true, length: { maximum: 20 }
  validates :year, presence: true, numericality: { only_integer: true }
  validates :plot, presence: true, length: { minimum: 10, maximum: 500 }
  validates :director, presence: true, length: { minimum: 2, maximum: 20 }
  validates :english, presence: true, inclusion: [true, false]

  def genre_names
    movie_genres.map do |movie_genre|
      movie_genre.genre.name
    end
  end

  def actor_info
    actors.map do |actor|
      { :first_name => actor.first_name, :last_name => actor.last_name, :age => actor.age, :gender => actor.gender }
    end
  end
end
