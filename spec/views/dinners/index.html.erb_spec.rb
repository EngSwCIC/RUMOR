require 'rails_helper'

RSpec.describe "dinners/index", type: :view do
  before(:each) do
    assign(:dinners, [
      Dinner.create!(
        :salad => "Salad",
        :sauce => "Sauce",
        :soup => "Soup",
        :main_course => "Main Course",
        :vegetarian_dish => "Vegetarian Dish",
        :accompaniments => "Accompaniments",
        :dessert => "Dessert",
        :juice => "Juice"
      ),
      Dinner.create!(
        :salad => "Salad",
        :sauce => "Sauce",
        :soup => "Soup",
        :main_course => "Main Course",
        :vegetarian_dish => "Vegetarian Dish",
        :accompaniments => "Accompaniments",
        :dessert => "Dessert",
        :juice => "Juice"
      )
    ])
  end

  it "renders a list of dinners" do
    render
    assert_select "tr>td", :text => "Salad".to_s, :count => 2
    assert_select "tr>td", :text => "Sauce".to_s, :count => 2
    assert_select "tr>td", :text => "Soup".to_s, :count => 2
    assert_select "tr>td", :text => "Main Course".to_s, :count => 2
    assert_select "tr>td", :text => "Vegetarian Dish".to_s, :count => 2
    assert_select "tr>td", :text => "Accompaniments".to_s, :count => 2
    assert_select "tr>td", :text => "Dessert".to_s, :count => 2
    assert_select "tr>td", :text => "Juice".to_s, :count => 2
  end
end
