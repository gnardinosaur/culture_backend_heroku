class User < ApplicationRecord
  has_many :favorites
  has_many :artworks, through: :favorites
  has_many :searches
  has_many :results, through: :searches
end
