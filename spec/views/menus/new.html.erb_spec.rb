require 'rails_helper'

RSpec.describe "menus/new", type: :view do
  before(:each) do
    assign(:menu, Menu.new(date: "2018-01-01"))
  end

  it "renders new menu form" do
    render

    assert_select "form[action=?][method=?]", menus_path, "post" do
      # year field
      assert_select "select[name=?]", "menu[date(1i)]"
      # month field
      assert_select "select[name=?]", "menu[date(2i)]"
      # day field
      assert_select "select[name=?]", "menu[date(3i)]"
      #submit
      assert_select "input[name=?]", "commit"
    end
  end
end
