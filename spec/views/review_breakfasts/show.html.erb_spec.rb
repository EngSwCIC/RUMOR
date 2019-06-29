require 'rails_helper'

RSpec.describe "review_breakfasts/show", type: :view do
  before(:each) do
    @review_breakfast = assign(:review_breakfast, ReviewBreakfast.create!(
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
