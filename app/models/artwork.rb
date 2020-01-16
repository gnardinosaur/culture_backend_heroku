class ArtWork < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites
  has_many :emails
  has_many :schedules, through: :emails

end
