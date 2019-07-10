require 'rails_helper'

RSpec.describe "menus/index", type: :view do
  before(:each) do
    assign(:menus, [
      @m1 = Menu.create!(date: Date.today),
      @m2 = Menu.create!(date: Date.tomorrow)
    ])
    @week_menus = []
    @week_menus << @m1 << @m2
  end

  it "renders a list of menus" do
    render
    assert_select "tr>td", :text => "Dia #{@m1.date.day}"
    assert_select "tr>td", :text => "Dia #{@m2.date.day}"
  end
end
