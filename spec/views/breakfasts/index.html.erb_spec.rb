require 'rails_helper'

RSpec.describe "breakfasts/index", type: :view do
  before(:each) do
    @m1 = Menu.create!(:date => "2018-01-01")
    @m2 = Menu.create!(:date => "2018-01-02")
    assign(:breakfasts, [
      Breakfast.create!(
        :menu_id => @m1.id,
        :hot_drinks => "Hot Drinks",
        :vegetarian_drink => "Vegetarian Drink",
        :chocolate_milk => "Chocolate Milk",
        :bread => "Bread",
        :vegetarian_bread => "Vegetarian Bread",
        :margarine => "Margarine",
        :vegetarian_margarine => "Vegetarian Margarine",
        :complement => "Complement",
        :vegetarian_complement => "Vegetarian Complement",
        :fruit => "abacate"
      ),
      Breakfast.create!(
        :menu_id => @m2.id,
        :hot_drinks => "Hot Drinks",
        :vegetarian_drink => "Vegetarian Drink",
        :chocolate_milk => "Chocolate Milk",
        :bread => "Bread",
        :vegetarian_bread => "Vegetarian Bread",
        :margarine => "Margarine",
        :vegetarian_margarine => "Vegetarian Margarine",
        :complement => "Complement",
        :vegetarian_complement => "Vegetarian Complement",
        :fruit => "abacaxi"
      )
    ])
  end

  it "renders a list of breakfasts" do
    render
    assert_select "tr>td", :text => "Hot Drinks".to_s, :count => 2
    assert_select "tr>td", :text => "Vegetarian Drink".to_s, :count => 2
    assert_select "tr>td", :text => "Chocolate Milk".to_s, :count => 2
    assert_select "tr>td", :text => "Bread".to_s, :count => 2
    assert_select "tr>td", :text => "Vegetarian Bread".to_s, :count => 2
    assert_select "tr>td", :text => "Margarine".to_s, :count => 2
    assert_select "tr>td", :text => "Vegetarian Margarine".to_s, :count => 2
    assert_select "tr>td", :text => "Complement".to_s, :count => 2
    assert_select "tr>td", :text => "Vegetarian Complement".to_s, :count => 2
  end
end
