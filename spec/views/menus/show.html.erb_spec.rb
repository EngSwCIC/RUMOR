require 'rails_helper'

RSpec.describe "menus/show", type: :view do
  before(:each) do
    @menu = assign(:menu, Menu.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
