class ReviewDinner < ApplicationRecord
    belongs_to :user
    belongs_to :dinner

    validates :rating, :comment, presence: true
    validates :rating, numericality:{
        only_integer: true,
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 5,
        message: "Somente uma nota inteira entre 1 e 5"
    }
end
