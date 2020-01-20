class Schedule < ApplicationRecord
  belongs_to :user
  has_many :emails, dependent: :destroy
  has_many :artworks, through: :emails
end
