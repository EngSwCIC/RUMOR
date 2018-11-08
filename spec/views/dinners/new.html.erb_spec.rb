require 'rails_helper'

RSpec.describe "dinners/new", type: :view do
  before(:each) do
    assign(:dinner, Dinner.new(
      :salad => "MyString",
      :sauce => "MyString",
      :soup => "MyString",
      :main_course => "MyString",
      :vegetarian_dish => "MyString",
      :accompaniments => "MyString",
      :dessert => "MyString",
      :juice => "MyString"
    ))
  end

  it "renders new dinner form" do
    render

    assert_select "form[action=?][method=?]", dinners_path, "post" do

      assert_select "input[name=?]", "dinner[salad]"

      assert_select "input[name=?]", "dinner[sauce]"

      assert_select "input[name=?]", "dinner[soup]"

      assert_select "input[name=?]", "dinner[main_course]"

      assert_select "input[name=?]", "dinner[vegetarian_dish]"

      assert_select "input[name=?]", "dinner[accompaniments]"

      assert_select "input[name=?]", "dinner[dessert]"

      assert_select "input[name=?]", "dinner[juice]"
    end
  end
end
