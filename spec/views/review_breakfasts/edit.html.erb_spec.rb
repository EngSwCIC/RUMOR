require 'rails_helper'

RSpec.describe "review_breakfasts/edit", type: :view do
  before(:each) do
    @review_breakfast = assign(:review_breakfast, ReviewBreakfast.create!(
      :rating => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit review_breakfast form" do
    render

    assert_select "form[action=?][method=?]", review_breakfast_path(@review_breakfast), "post" do

      assert_select "input[name=?]", "review_breakfast[rating]"

      assert_select "textarea[name=?]", "review_breakfast[comment]"
    end
  end
end
