require 'rails_helper'

RSpec.describe "breakfasts/edit", type: :view do
  before(:each) do
    @m1 = Menu.create!(:date => "2018-04-06")
    @breakfast = assign(:breakfast, Breakfast.create!(
      :menu_id => @m1.id,
      :hot_drinks => "MyString",
      :vegetarian_drink => "MyString",
      :chocolate_milk => "MyString",
      :bread => "MyString",
      :vegetarian_bread => "MyString",
      :margarine => "MyString",
      :vegetarian_margarine => "MyString",
      :complement => "MyString",
      :vegetarian_complement => "MyString",
      :fruit => "frutinha"
    ))
  end

  it "renders the edit breakfast form" do
    render

    assert_select "form[action=?][method=?]", breakfast_path(@breakfast), "post" do

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
