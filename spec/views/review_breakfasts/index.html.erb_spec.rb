require 'rails_helper'

RSpec.describe "review_breakfasts/index", type: :view do
  before(:each) do
    assign(:review_breakfasts, [
      ReviewBreakfast.create!(
        :rating => 2,
        :comment => "MyText"
      ),
      ReviewBreakfast.create!(
        :rating => 2,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of review_breakfasts" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
