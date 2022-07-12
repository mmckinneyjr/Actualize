class Actor < ApplicationRecord
  # Make it so that a Actor must have a first_name with a length of at least 2.
  validates :first_name, presence: true, length: { minimum: 2 }

  # Make it so that a Actor must have a last_name with a length of at least 2.
  validates :last_name, presence: true, length: { minimum: 2 }

  # Make it so that a Actor must have a known_for movie/show listed.
  validates :known_for, presence: true

  # Make it so that a Actor must have an age over 13 to be listed on the site.
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 13 }
end
