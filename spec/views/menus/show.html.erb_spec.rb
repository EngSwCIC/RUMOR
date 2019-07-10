require 'rails_helper'

RSpec.describe "menus/show", type: :view do
  before(:each) do
    @menu = assign(:menu, Menu.create!(date: Date.today))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@menu.date.strftime("%A, %d/%m/%Y"))
  end
end
