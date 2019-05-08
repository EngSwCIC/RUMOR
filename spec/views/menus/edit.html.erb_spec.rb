require 'rails_helper'

RSpec.describe "menus/edit", type: :view do
  before(:each) do
    @menu = assign(:menu, Menu.create!(date: "2018-01-01"))
  end

  it "renders the edit menu form" do
    render

    assert_select "form[action=?][method=?]", menu_path(@menu), "post" do
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
