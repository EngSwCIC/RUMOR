require 'rails_helper'

RSpec.describe "review_dinners/new", type: :view do
  before(:each) do
    assign(:review_dinner, ReviewDinner.new(
      :rating => 1,
      :comment => "MyText"
    ))
  end

  it "renders new review_dinner form" do
    render

    assert_select "form[action=?][method=?]", review_dinners_path, "post" do

      assert_select "input[name=?]", "review_dinner[rating]"

      assert_select "textarea[name=?]", "review_dinner[comment]"
    end
  end
end
