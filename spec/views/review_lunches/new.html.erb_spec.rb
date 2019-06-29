require 'rails_helper'

RSpec.describe "review_lunches/new", type: :view do
  before(:each) do
    assign(:review_lunch, ReviewLunch.new(
      :rating => 1,
      :comment => "MyText"
    ))
  end

  it "renders new review_lunch form" do
    render

    assert_select "form[action=?][method=?]", review_lunches_path, "post" do

      assert_select "input[name=?]", "review_lunch[rating]"

      assert_select "textarea[name=?]", "review_lunch[comment]"
    end
  end
end
