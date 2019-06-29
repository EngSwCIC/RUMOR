require 'rails_helper'

RSpec.describe "review_breakfasts/new", type: :view do
  before(:each) do
    assign(:review_breakfast, ReviewBreakfast.new(
      :rating => 1,
      :comment => "MyText"
    ))
  end

  it "renders new review_breakfast form" do
    render

    assert_select "form[action=?][method=?]", review_breakfasts_path, "post" do

      assert_select "input[name=?]", "review_breakfast[rating]"

      assert_select "textarea[name=?]", "review_breakfast[comment]"
    end
  end
end
