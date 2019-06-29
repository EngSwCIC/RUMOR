require 'rails_helper'

RSpec.describe "review_dinners/edit", type: :view do
  before(:each) do
    @review_dinner = assign(:review_dinner, ReviewDinner.create!(
      :rating => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit review_dinner form" do
    render

    assert_select "form[action=?][method=?]", review_dinner_path(@review_dinner), "post" do

      assert_select "input[name=?]", "review_dinner[rating]"

      assert_select "textarea[name=?]", "review_dinner[comment]"
    end
  end
end
