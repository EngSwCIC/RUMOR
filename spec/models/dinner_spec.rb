require 'rails_helper'

RSpec.describe Dinner, type: :model do
  it "is not valid without attributes" do
    expect(Dinner.new).to_not be_valid, "where are the attributes?"
  end
  it "is valid with valid attributes and belongs to a menu" do
    menu1 = Menu.create(date: "2018-05-09")
    dinner1 = Dinner.new(menu_id: menu1.id, salad: "alface", sauce: "mostarda", main_course: "bife", soup: "batata", vegetarian_dish: "lentilha", accompaniments: "arroz e feijao", dessert: "banana", juice: "manga")
    expect(dinner1).to be_valid
  end
  it "is not valid without salad" do
    menu1 = Menu.create!(date: "2018-05-09")
    dinner1 = Dinner.new(menu_id: menu1.id, salad: nil, sauce: "mostarda", main_course: "bife", soup: "batata", vegetarian_dish: "lentilha", accompaniments: "arroz e feijao", dessert: "banana", juice: "manga")
    expect(dinner1).to_not be_valid
  end
end
