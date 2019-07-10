require 'rails_helper'

RSpec.describe ReviewBreakfast, type: :model do

  before (:each) do
    @menu = FactoryBot.create(:menu)
    @breakfast = Breakfast.create(menu_id: @menu.to_param,
      hot_drinks: "leite",
      vegetarian_drink: "leite de soja",
      chocolate_milk: "chocolate",
      bread: "pão careca",
      vegetarian_bread: "pão sem leite",
      margarine: "manteiga",
      vegetarian_margarine: "margarina vegana",
      complement: "geleia",
      vegetarian_complement: "geleia",
      fruit: "abacaxi")
  end

 it "is not valid without attributes" do
    expect(ReviewBreakfast.new).to_not be_valid, "where are the attributes?"
  end
  it "is valid with valid attributes and belongs to a breakfast" do
    @user = create(:user)
    @review_breakfast = ReviewBreakfast.new(user_id: @user.id ,
         rating: 1,
         comment: "teste2",
         breakfast_id: @breakfast.id)
    expect(@review_breakfast).to be_valid
  end
  it "is not valid without rating" do
    user1 = create(:user)
    menu1 = Menu.create(date: "2018-05-09")
    breakfast1 = Breakfast.new(menu_id: menu1.id, hot_drinks: "cafe e leite", vegetarian_drink: "cafe", chocolate_milk: "achocolatado", bread: "pao", vegetarian_bread: "pao de batata", margarine: "margarina", vegetarian_margarine: "creme vegetal", complement: "queijo", vegetarian_complement: "tofu", fruit: "abacaxi")
    review_breakfast1 = ReviewBreakfast.new(user_id: user1.id ,
         rating: nil,
         comment: "teste2",
         breakfast_id: breakfast1.id)
    expect(review_breakfast1).to_not be_valid
  end
end
