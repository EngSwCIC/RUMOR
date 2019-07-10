require 'rails_helper'

RSpec.describe "satisfactions_lunch/index", type: :view do
  before(:each) do
    assign(:customer_satisfactions, [
      CustomerSatisfaction.create!(
        :user_group => 1,
        :meal => "Almoco",
        :rating => 3,
        :like => "foi top",
        :disgust => "acabou",
        :suggestion => "poderia ter mais"
      )
    ])
end
  it "renders a list of satisfactions_lunch" do
    render
    assert_select "tr>td", :text => 1.to_s
    assert_select "tr>td", :text => "Almoco".to_s
    assert_select "tr>td", :text => 3.to_s
    assert_select "tr>td", :text => "foi top".to_s
    assert_select "tr>td", :text => "acabou".to_s
    assert_select "tr>td", :text => "poderia ter mais".to_s
  end
end
