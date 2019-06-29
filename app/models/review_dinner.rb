class ReviewDinner < ApplicationRecord
    belongs_to :user
    belongs_to :dinner
end
