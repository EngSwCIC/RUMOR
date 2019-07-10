require 'rails_helper'

RSpec.describe "breakfasts/show", type: :view do
  before(:each) do
    @user = create(:user)
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
    @breakfast_review = assign(:breakfast_review, ReviewBreakfast.create!(
      :user_id => @user.to_param ,
      :rating => 5,
      :comment => "teste",
      :breakfast_id => @breakfast.to_param
    ))
    @review_breakfast = ReviewBreakfast.where(breakfast_id: @breakfast.id).order("created_at DESC")
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
