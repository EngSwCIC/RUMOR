class Breakfast < ApplicationRecord
  belongs_to :menu

  validates :menu_id, presence: true
  validates :hot_drinks, presence: true
  validates :vegetarian_drink, presence: true
  validates :chocolate_milk, presence: true
  validates :bread, presence: true
  validates :vegetarian_bread, presence: true
  validates :margarine, presence: true
  validates :vegetarian_margarine, presence: true
  validates :complement, presence: true
  validates :vegetarian_complement, presence: true
  validates :fruit, presence: true
end
