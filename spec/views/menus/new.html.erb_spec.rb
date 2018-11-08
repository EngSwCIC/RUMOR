require 'rails_helper'

RSpec.describe "menus/new", type: :view do
  before(:each) do
    assign(:menu, Menu.new())
  end

  it "renders new menu form" do
    render

    assert_select "form[action=?][method=?]", menus_path, "post" do
    end
  end
end
