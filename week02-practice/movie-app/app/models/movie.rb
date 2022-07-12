class Movie < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :year, presence: true, numericality: { only_integer: true }
  validates :plot, presence: true, length: { minimum: 10, maximum: 500 }
  validates :director, presence: true, length: { minimum: 2, maximum: 20 }
  validates :english, presence: true, inclusion: [true, false]
end
