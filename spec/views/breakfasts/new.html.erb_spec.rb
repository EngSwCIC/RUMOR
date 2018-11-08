require 'rails_helper'

RSpec.describe "breakfasts/new", type: :view do
  before(:each) do
    assign(:breakfast, Breakfast.new(
      :hot_drinks => "MyString",
      :vegetarian_drink => "MyString",
      :chocolate_milk => "MyString",
      :bread => "MyString",
      :vegetarian_bread => "MyString",
      :margarine => "MyString",
      :vegetarian_margarine => "MyString",
      :complement => "MyString",
      :vegetarian_complement => "MyString"
    ))
  end

  it "renders new breakfast form" do
    render

    assert_select "form[action=?][method=?]", breakfasts_path, "post" do

      assert_select "input[name=?]", "breakfast[hot_drinks]"

      assert_select "input[name=?]", "breakfast[vegetarian_drink]"

      assert_select "input[name=?]", "breakfast[chocolate_milk]"

      assert_select "input[name=?]", "breakfast[bread]"

      assert_select "input[name=?]", "breakfast[vegetarian_bread]"

      assert_select "input[name=?]", "breakfast[margarine]"

      assert_select "input[name=?]", "breakfast[vegetarian_margarine]"

      assert_select "input[name=?]", "breakfast[complement]"

      assert_select "input[name=?]", "breakfast[vegetarian_complement]"
    end
  end
end
