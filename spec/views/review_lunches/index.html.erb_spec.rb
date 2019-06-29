require 'rails_helper'

RSpec.describe "review_lunches/index", type: :view do
  before(:each) do
    assign(:review_lunches, [
      ReviewLunch.create!(
        :rating => 2,
        :comment => "MyText"
      ),
      ReviewLunch.create!(
        :rating => 2,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of review_lunches" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
