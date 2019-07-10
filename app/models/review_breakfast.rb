class ReviewBreakfast < ApplicationRecord
    belongs_to :user
    belongs_to :breakfast

    validates :rating, presence: true
end
