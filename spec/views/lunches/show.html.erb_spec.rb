require 'rails_helper'

RSpec.describe "lunches/show", type: :view do
  before(:each) do
    @user = create(:user)
    @m1 = Menu.create!(:date => "2018-04-06")
    @lunch = assign(:lunch, Lunch.create!(
       :menu_id => @m1.id,
      :salad => "Salad",
      :sauce => "Sauce",
      :main_course => "Main Course",
      :garnish => "Garnish",
      :vegetarian_dish => "Vegetarian Dish",
      :accompaniments => "Accompaniments",
      :dessert => "Dessert",
      :juice => "Juice"
    ))
    @lunch_review = assign(:lunch_review, ReviewLunch.create!(
      :user_id => @user.to_param ,
      :rating => 5,
      :comment => "teste",
      :lunch_id => @lunch.to_param
    ))
    @review_lunch = ReviewLunch.where(lunch_id: @lunch.id).order("created_at DESC")
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Salad/)
    expect(rendered).to match(/Sauce/)
    expect(rendered).to match(/Main Course/)
    expect(rendered).to match(/Garnish/)
    expect(rendered).to match(/Vegetarian Dish/)
    expect(rendered).to match(/Accompaniments/)
    expect(rendered).to match(/Dessert/)
    expect(rendered).to match(/Juice/)
  end
end
