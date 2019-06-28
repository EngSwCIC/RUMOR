require 'rails_helper'

RSpec.describe "user_two_groups/index", type: :view do
  before(:each) do
    assign(:customer_satisfactions, [
      CustomerSatisfaction.create!(
        :user_group => 2,
        :meal => "Jantar",
        :rating => 3,
        :like => "foi top",
        :disgust => "acabou",
        :suggestion => "poderia ter mais"
      )
    ])
end


  it "renders a list of user_two_groups" do
    render
    assert_select "tr>td", :text => 2.to_s
    assert_select "tr>td", :text => "Jantar".to_s
    assert_select "tr>td", :text => 3.to_s
    assert_select "tr>td", :text => "foi top".to_s
    assert_select "tr>td", :text => "poderia ter mais".to_s
  end
end
