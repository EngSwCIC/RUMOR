require 'rails_helper'

RSpec.describe "lunches/new", type: :view do
  before(:each) do
    assign(:lunch, Lunch.new(
      :salad => "MyString",
      :sauce => "MyString",
      :main_course => "MyString",
      :garnish => "MyString",
      :vegetarian_dish => "MyString",
      :accompaniments => "MyString",
      :dessert => "MyString",
      :juice => "MyString"
    ))
  end

  it "renders new lunch form" do
    render

    assert_select "form[action=?][method=?]", lunches_path, "post" do

      assert_select "input[name=?]", "lunch[salad]"

      assert_select "input[name=?]", "lunch[sauce]"

      assert_select "input[name=?]", "lunch[main_course]"

      assert_select "input[name=?]", "lunch[garnish]"

      assert_select "input[name=?]", "lunch[vegetarian_dish]"

      assert_select "input[name=?]", "lunch[accompaniments]"

      assert_select "input[name=?]", "lunch[dessert]"

      assert_select "input[name=?]", "lunch[juice]"
    end
  end
end
