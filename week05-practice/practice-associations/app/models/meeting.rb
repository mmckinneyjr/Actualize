class Meeting < ApplicationRecord
  has_many :speaker_meeting
  has_many :speakers, through: :speaker_meeting

  validates :title, presence: true
  validates :agenda, presence: true
  validates :location, presence: true
  validates :time, presence: true
end
