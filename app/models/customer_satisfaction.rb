class CustomerSatisfaction < ApplicationRecord

  validates :user_group, presence: true
  validates :meal, presence: true
  validates :rating, presence: true
  validates :like, presence: true
  validates :disgust, presence: true
  validates :suggestion, presence: true
end
