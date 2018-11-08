require 'rails_helper'

RSpec.describe "customer_satisfactions/index", type: :view do
  before(:each) do
    assign(:customer_satisfactions, [
      CustomerSatisfaction.create!(
        :user_group => 2,
        :meal => "Meal",
        :rating => 3,
        :like => "MyText",
        :disgust => "MyText",
        :suggestion => "MyText"
      ),
      CustomerSatisfaction.create!(
        :user_group => 2,
        :meal => "Meal",
        :rating => 3,
        :like => "MyText",
        :disgust => "MyText",
        :suggestion => "MyText"
      )
    ])
  end

  it "renders a list of customer_satisfactions" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Meal".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
