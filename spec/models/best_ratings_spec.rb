require 'rails_helper'

RSpec.describe CustomerSatisfaction, type: :model do

it "is valid with ratings are correctly ordered" do

 @rating_menor=CustomerSatisfaction.new(user_group: 1, meal: "jantar", rating: 1 , like: "bom demais", disgust: "queria mais" ,suggestion: "bolo de chocolate na sobremesa" )

@rating_medio=CustomerSatisfaction.new(user_group: 1, meal: "jantar", rating: 3 , like: "bom demais", disgust: "queria mais" ,suggestion: "bolo de chocolate na sobremesa" )
 
 @rating_maior=CustomerSatisfaction.new(user_group: 1, meal: "jantar", rating: 5 , like: "bom demais", disgust: "queria mais" ,suggestion: "bolo de chocolate na sobremesa" )
  
    CustomerSatisfaction.order('rating desc').all 
expect( [@rating_maior,@rating_medio, @rating_menor])
  end
end
