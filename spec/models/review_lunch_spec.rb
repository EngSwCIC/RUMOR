require 'rails_helper'

RSpec.describe ReviewLunch, type: :model do

  before (:each) do
    @menu = FactoryBot.create(:menu)
    @lunch = Lunch.create(menu_id: @menu.to_param,
      salad: "alface e pepino",
      sauce: "molho oriental",
      garnish: "mandioca",
      main_course: "carne de sol",
      vegetarian_dish: "silveirinha de soja",
      accompaniments: "arroz e feijao",
      dessert: "banana",
      juice: "manga")
  end

  it "is not valid without attributes" do
    expect(Lunch.new).to_not be_valid, "where are the attributes?"
  end
  it "is valid with valid attributes and belongs to a lunch" do
    user1 = create(:user)
    review_lunch1 = ReviewLunch.new(user_id: user1.id ,
         rating: 2,
         comment: "teste2",
         lunch_id: @lunch.id)
    expect(review_lunch1).to be_valid
  end
  it "is not valid without rating" do
    user1 = create(:user)
    review_lunch1 = ReviewLunch.new(user_id: user1.id ,
         rating: nil,
         comment: "teste2",
         lunch_id: @lunch.id)
    expect(review_lunch1).to_not be_valid
  end
end
