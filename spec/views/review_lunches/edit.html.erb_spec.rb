require 'rails_helper'

RSpec.describe "review_lunches/edit", type: :view do
  before(:each) do
    @review_lunch = assign(:review_lunch, ReviewLunch.create!(
      :rating => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit review_lunch form" do
    render

    assert_select "form[action=?][method=?]", review_lunch_path(@review_lunch), "post" do

      assert_select "input[name=?]", "review_lunch[rating]"

      assert_select "textarea[name=?]", "review_lunch[comment]"
    end
  end
end
