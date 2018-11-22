require 'rails_helper'

RSpec.describe Breakfast, type: :model do
  it "is not valid without attributes" do
    expect(Breakfast.new).to_not be_valid, "where are the attributes?"
  end
  it "is valid with valid attributes and belongs to a menu" do
    menu1 = Menu.create(date: "2018-05-09")
    breakfast1 = Breakfast.new(menu_id: menu1.id, hot_drinks: "cafe e leite", vegetarian_drink: "cafe", chocolate_milk: "achocolatado", bread: "pao", vegetarian_bread: "pao de batata", margarine: "margarina", vegetarian_margarine: "creme vegetal", complement: "queijo", vegetarian_complement: "tofu", fruit: "abacaxi")
    expect(breakfast1).to be_valid
  end
  it "is not valid without chocolate milk" do
    menu1 = Menu.create!(date: "2018-05-09")
    breakfast1 = Breakfast.new(menu_id: menu1.id, hot_drinks: "cafe e leite", vegetarian_drink: "cafe", chocolate_milk: nil, bread: "pao", vegetarian_bread: "pao de batata", margarine: "margarina", vegetarian_margarine: "creme vegetal", complement: "queijo", vegetarian_complement: "tofu", fruit: "abacaxi")
    expect(breakfast1).to_not be_valid
  end
end
