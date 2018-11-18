require 'rails_helper'

RSpec.describe Lunch, type: :model do
  it "is not valid without attributes" do
    expect(Lunch.new).to_not be_valid
  end
  it "is valid with valid attributes and belongs to a menu" do
    menu1 = Menu.create(date: "2018-05-09")
    lunch1 = Lunch.new(menu_id: menu1.id, salad: "alface", sauce: "mostarda", main_course: "bife", garnish: "batata", vegetarian_dish: "lentilha", accompaniments: "arroz e feijao", dessert: "banana", juice: "manga")
    expect(lunch1).to be_valid
  end
  it "is not valid without salad"
  it "is not valid without sauce"
end
