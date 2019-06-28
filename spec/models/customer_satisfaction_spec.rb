require 'rails_helper'

RSpec.describe CustomerSatisfaction, type: :model do
  it "is not valid without attributes" do
    expect(CustomerSatisfaction.new).to_not be_valid, "where are the attributes?"
  end
  it "is valid with valid attributes and belongs to a menu" do
    customerSatisfaction1 = CustomerSatisfaction.new(user_group: 1, meal: "jantar", rating: 5 , like: "bom demais", disgust: "queria mais" ,suggestion: "bolo de chocolate na sobremesa" )
    expect(customerSatisfaction1).to be_valid
  end
  it "valid param user_group" do
    customerSatisfaction1 = CustomerSatisfaction.new(user_group: 1, meal: "jantar", rating: 5 , like: "bom demais", disgust: "queria mais" ,suggestion: "bolo de chocolate na sobremesa")
    expect(customerSatisfaction1).to be_valid
  end
  it "valid param rating" do
    customerSatisfaction1 = CustomerSatisfaction.new(user_group: 2, meal: "jantar", rating: 4, like: "bom demais", disgust: "queria mais" ,suggestion: "bolo de chocolate na sobremesa")
    expect(customerSatisfaction1).to be_valid
  end
  it "is not valid without rating" do
    customerSatisfaction1 = CustomerSatisfaction.new(user_group: 3, meal: "jantar", like: "bom demais", disgust: "queria mais" ,suggestion: "bolo de chocolate na sobremesa")
    expect(customerSatisfaction1).to_not be_valid
  end
end
