class CustomerSatisfaction < ApplicationRecord
  #validações para as pesquisas de satisfação
  #o grupo do usuario tem que ser  um numero entre 1 e 3 o rating tem que ser entre 1 e 5
  #todos os campos precisam ser preenchidos
  
  validates :meal, presence: true
  validates :rating, presence: true
  validates :like, presence: true
  validates :disgust, presence: true
  validates :suggestion, presence: true
  
end
