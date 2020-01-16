class Email < ApplicationRecord
  belongs_to :artwork
  belongs_to :schedule
end
