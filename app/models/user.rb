class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  has_many :favorites
  has_many :artworks, through: :favorites
  has_many :schedules
  has_many :emails, through: :schedules
end
