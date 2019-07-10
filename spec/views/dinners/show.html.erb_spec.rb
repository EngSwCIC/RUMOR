require 'rails_helper'

RSpec.describe "dinners/show", type: :view do
  before(:each) do
    @user = create(:user)
    @m1 = Menu.create!(:date => "2018-04-06")
    @dinner = assign(:dinner, Dinner.create!(
      :menu_id => @m1.id,
      :salad => "Salad",
      :sauce => "Sauce",
      :soup => "Soup",
      :main_course => "Main Course",
      :vegetarian_dish => "Vegetarian Dish",
      :accompaniments => "Accompaniments",
      :dessert => "Dessert",
      :juice => "Juice"
    ))
    @dinner_review = assign(:dinner_review, ReviewDinner.create!(
      :user_id => @user.to_param ,
      :rating => 5,
      :comment => "teste",
      :dinner_id => @dinner.to_param
    ))
    @review_dinner = ReviewDinner.where(dinner_id: @dinner.id).order("created_at DESC")
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Salad/)
    expect(rendered).to match(/Sauce/)
    expect(rendered).to match(/Soup/)
    expect(rendered).to match(/Main Course/)
    expect(rendered).to match(/Vegetarian Dish/)
    expect(rendered).to match(/Accompaniments/)
    expect(rendered).to match(/Dessert/)
    expect(rendered).to match(/Juice/)
  end
end
