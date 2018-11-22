require 'rails_helper'

RSpec.describe "menus/index", type: :view do
  before(:each) do
    assign(:menus, [
      m1 = Menu.create!(date: "2018-11-01"),
      m2 = Menu.create!(date: "2018-11-02")
    ])
    @month_menu = []
    @month_menu << m1 << m2
  end

  it "renders a list of menus" do
    render
    assert_select "tr>td", :text => "01", :count => 1
    assert_select "tr>td", :text => "02", :count => 1
  end
end
