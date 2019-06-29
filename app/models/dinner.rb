class Dinner < ApplicationRecord
  belongs_to :menu
  has_many :review_dinner

  validates :menu_id, presence: true
  validates :salad, presence: true
  validates :sauce, presence: true
  validates :soup, presence: true
  validates :main_course, presence: true
  validates :vegetarian_dish, presence: true
  validates :accompaniments, presence: true
  validates :dessert, presence: true
  validates :juice, presence: true
end
