class Schedule < ApplicationRecord
  belongs_to :user
  has_many :emails
  has_many :artworks, through: :emails
end
