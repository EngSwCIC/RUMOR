require 'rails_helper'

RSpec.describe "dinners/edit", type: :view do
  before(:each) do
    @m1 = Menu.create!(:date => "2018-04-06")
    @dinner = assign(:dinner, Dinner.create!(
      :menu_id => @m1.id,
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

  it "renders the edit dinner form" do
    render

    assert_select "form[action=?][method=?]", dinner_path(@dinner), "post" do

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
