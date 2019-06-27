require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    # @user = assign(:user, User.create!())
    @user = FactoryBot.create(:user)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match @user.name
    expect(rendered).to match @user.email
  end
end
