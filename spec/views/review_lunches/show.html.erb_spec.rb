require 'rails_helper'

RSpec.describe "review_lunches/show", type: :view do
  before(:each) do
    @review_lunch = assign(:review_lunch, ReviewLunch.create!(
      :rating => 2,
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
