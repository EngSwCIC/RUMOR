require 'rails_helper'

RSpec.describe ReviewDinner, type: :model do

  before (:each) do
    @menu = FactoryBot.create(:menu)
    @dinner = Dinner.create(menu_id: @menu.to_param,
      salad: "alface e pepino",
      sauce: "molho oriental",
      soup: "feijao com massinha",
      main_course: "carne de sol",
      vegetarian_dish: "silveirinha de soja",
      accompaniments: "arroz e feijao",
      dessert: "banana",
      juice: "manga",)
  end

  it "is not valid without attributes" do
    expect(Dinner.new).to_not be_valid, "where are the attributes?"
  end
  it "is valid with valid attributes and belongs to a dinner" do
    user1 = create(:user)
    review_dinner1 = ReviewDinner.new(user_id: user1.id ,
         rating: 2,
         comment: "teste2",
         dinner_id: @dinner.id)
    expect(review_dinner1).to be_valid
  end
  it "is not valid without rating" do
    user1 = create(:user)
    menu1 = Menu.create!(date: "2018-05-09")
    dinner1 = Dinner.new(menu_id: menu1.id, salad: nil, sauce: "mostarda", main_course: "bife", soup: "batata", vegetarian_dish: "lentilha", accompaniments: "arroz e feijao", dessert: "banana", juice: "manga")
    review_dinner1 = ReviewDinner.new(user_id: user1.id ,
         rating: nil,
         comment: "teste2",
         dinner_id: dinner1.id)
    expect(review_dinner1).to_not be_valid
  end
end
