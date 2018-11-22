require 'rails_helper'

RSpec.describe "menus/show", type: :view do
  before(:each) do
    @menu = assign(:menu, Menu.create!(date: "2018-01-01"))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Monday, 01 January 2018/)
  end
end
