class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :review_lunches, dependent: :destroy
  has_many :review_dinners, dependent: :destroy
  has_many :review_breakfasts, dependent: :destroy
end
