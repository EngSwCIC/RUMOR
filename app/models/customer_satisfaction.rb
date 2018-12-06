class CustomerSatisfaction < ApplicationRecord
  validates :user_group, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 3}
  validates :meal, presence: true
  validates :rating, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates :like, presence: true
  validates :disgust, presence: true
  validates :suggestion, presence: true
end
