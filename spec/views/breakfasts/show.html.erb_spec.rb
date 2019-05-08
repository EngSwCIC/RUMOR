require 'rails_helper'

RSpec.describe "breakfasts/show", type: :view do
  before(:each) do
    @menu = Menu.create!(:date => "2018-06-06")
    @breakfast = assign(:breakfast, Breakfast.create!(
      :menu_id => @menu.id,
      :hot_drinks => "Hot Drinks",
      :vegetarian_drink => "Vegetarian Drink",
      :chocolate_milk => "Chocolate Milk",
      :bread => "Bread",
      :vegetarian_bread => "Vegetarian Bread",
      :margarine => "Margarine",
      :vegetarian_margarine => "Vegetarian Margarine",
      :complement => "Complement",
      :vegetarian_complement => "Vegetarian Complement",
      :fruit => "Fruit"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Hot Drinks/)
    expect(rendered).to match(/Vegetarian Drink/)
    expect(rendered).to match(/Chocolate Milk/)
    expect(rendered).to match(/Bread/)
    expect(rendered).to match(/Vegetarian Bread/)
    expect(rendered).to match(/Margarine/)
    expect(rendered).to match(/Vegetarian Margarine/)
    expect(rendered).to match(/Complement/)
    expect(rendered).to match(/Vegetarian Complement/)
  end
end
