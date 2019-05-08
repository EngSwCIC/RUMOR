require 'rails_helper'

RSpec.describe "lunches/edit", type: :view do
  before(:each) do
    @m1 = Menu.create!(:date => "2018-04-06")
    @lunch = assign(:lunch, Lunch.create!(
     :menu_id => @m1.id,
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

  it "renders the edit lunch form" do
    render

    assert_select "form[action=?][method=?]", lunch_path(@lunch), "post" do

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
