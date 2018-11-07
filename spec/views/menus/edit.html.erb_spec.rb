require 'rails_helper'

RSpec.describe "menus/edit", type: :view do
  before(:each) do
    @menu = assign(:menu, Menu.create!())
  end

  it "renders the edit menu form" do
    render

    assert_select "form[action=?][method=?]", menu_path(@menu), "post" do
    end
  end
end
