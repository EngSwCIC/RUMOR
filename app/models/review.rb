class Review < ApplicationRecord
    belongs_to :user
    belongs_to :dinner, optional: true
    belongs_to :breakfast, optional: true
    belongs_to :lunch, optional: true
end
