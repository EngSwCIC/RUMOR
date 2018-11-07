require 'rails_helper'

RSpec.describe "dinners/show", type: :view do
  before(:each) do
    @dinner = assign(:dinner, Dinner.create!(
      :salad => "Salad",
      :sauce => "Sauce",
      :soup => "Soup",
      :main_course => "Main Course",
      :vegetarian_dish => "Vegetarian Dish",
      :accompaniments => "Accompaniments",
      :dessert => "Dessert",
      :juice => "Juice"
    ))
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
