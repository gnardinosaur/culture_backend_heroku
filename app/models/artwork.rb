class Artwork < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites
  has_many :results
  has_many :searches, through: :results

end
