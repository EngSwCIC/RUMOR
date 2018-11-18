class Menu < ApplicationRecord
  has_one :breakfast
  has_one :lunch
  has_one :dinner

  validates :date, presence: true, uniqueness: true
end
