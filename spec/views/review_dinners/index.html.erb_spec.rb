require 'rails_helper'

RSpec.describe "review_dinners/index", type: :view do
  before(:each) do
    assign(:review_dinners, [
      ReviewDinner.create!(
        :rating => 2,
        :comment => "MyText"
      ),
      ReviewDinner.create!(
        :rating => 2,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of review_dinners" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
