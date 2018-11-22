require 'rails_helper'

RSpec.describe "breakfasts/new", type: :view do
  before(:each) do
    @m1 = Menu.create!(:date => "2018-01-01")
    assign(:breakfast, Breakfast.new(
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
