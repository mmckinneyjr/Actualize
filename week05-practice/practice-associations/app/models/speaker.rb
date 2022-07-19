class Speaker < ApplicationRecord
  has_many :speaker_meeting
  has_many :meetings, through: :speaker_meeting

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
end
