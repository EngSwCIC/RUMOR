require 'rails_helper'

RSpec.describe "customer_satisfactions/show", type: :view do
  before(:each) do
    @customer_satisfaction = assign(:customer_satisfaction, CustomerSatisfaction.create!(
      :user_group => 2,
      :meal => "Meal",
      :rating => 3,
      :like => "MyText",
      :disgust => "MyText",
      :suggestion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Meal/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
