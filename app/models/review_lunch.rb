class ReviewLunch < ApplicationRecord
    belongs_to :user
    belongs_to :lunch
end
