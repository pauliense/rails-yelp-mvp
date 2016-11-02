class Restaurant < ApplicationRecord

CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
RATING = (0..5)

    validates :name, presence: true
    validates :address, presence: true
    validates :category, inclusion: { in: CATEGORY, allow_nil: false }, presence: true

    has_many :reviews, dependent: :destroy


end
