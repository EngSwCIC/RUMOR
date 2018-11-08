class Dinner < ApplicationRecord
  belongs_to :menu

  validates :salad, presence: true
  validates :sauce, presence: true
  validates :soup, presence: true
  validates :main_course, presence: true
  validates :vegetarian_dish, presence: true
  validates :accompaniments, presence: true
  validates :dessert, presence: true
  validates :juice, presence: true
end
