require 'rails_helper'

RSpec.describe "customer_satisfactions/index", type: :view do
  before(:each) do
    assign(:customer_satisfactions, [
      CustomerSatisfaction.create!(
        :user_group => 2,
        :meal => "Jantar",
        :rating => 3,
        :like => "foi top",
        :disgust => "acabou",
        :suggestion => "poderia ter mais"
      ),
      CustomerSatisfaction.create!(
        :user_group => 2,
        :meal => "Jantar",
        :rating => 1,
        :like => "uma bela refeição",
        :disgust => "prato pequeno",
        :suggestion => "poderia ter mais"
      )
    ])
  end

  it "renders a list of customer_satisfactions" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Jantar".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 1
    assert_select "tr>td", :text => "foi top".to_s, :count => 1
    assert_select "tr>td", :text => "prato pequeno".to_s, :count => 1
    assert_select "tr>td", :text => "poderia ter mais".to_s, :count => 2
  end
end
