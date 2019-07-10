##
# Essa classe aplica as validações de ReviewLunch
# ReviewLunch deve conter um rating e um comment e não podem ser nulos
# Deve existir um User e um Lunch
class ReviewLunch < ApplicationRecord
    belongs_to :user
    belongs_to :lunch

    validates :rating, :comment, presence: true
    validates :rating, numericality:{
        only_integer: true,
        greater_than_or_equal_to: 1,
        less_than_or_equal_to: 5,
        message: "Somente uma nota inteira entre 1 e 5"
    }
end
