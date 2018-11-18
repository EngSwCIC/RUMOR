require 'rails_helper'

RSpec.describe Menu, type: :model do
  it "is valid with valid attributes" do
    expect(Menu.new(date: "2018-06-06")).to be_valid
  end
  it "is not valid without a date" do
    expect(Menu.new).to_not be_valid
  end
  it "should not create 2 menus with the same date" do
    menu1 = Menu.create(date: "2008-05-05")
    expect(Menu.create(date: "2008-05-05")).to_not be_valid
  end
end
