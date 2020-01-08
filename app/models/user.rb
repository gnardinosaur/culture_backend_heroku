class User < ApplicationRecord
  has_many :favorites
  has_many :searches
  has_many :works, through: :searches
end
