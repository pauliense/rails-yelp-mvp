class Review < ApplicationRecord

RATING = [0,1,2,3,4,5]

  validates :content, presence: true, length: { minimum: 10 }
  validates :rating, numericality: { only_integer: true }, inclusion: { in: RATING, allow_nil: false },presence: true

  belongs_to :restaurant
end
