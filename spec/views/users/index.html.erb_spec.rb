require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
  @users = assign(:users, [
      FactoryBot.create(:user),
      FactoryBot.create(:user)
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => @users.first.name, :count => 1
    assert_select "tr>td", :text => @users.first.email, :count => 1
    assert_select "tr>td", :text => @users.last.name, :count => 1
    assert_select "tr>td", :text => @users.last.email, :count => 1
  end
end
