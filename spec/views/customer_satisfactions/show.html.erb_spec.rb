require 'rails_helper'

RSpec.describe "customer_satisfactions/show", type: :view do
  before(:each) do
    @customer_satisfaction = assign(:customer_satisfaction, CustomerSatisfaction.create!(
      :user_group => 2,
      :meal => "Jantar",
      :rating => 3,
      :like => "suco de goiaba",
      :disgust => "pepino",
      :suggestion => "chocolate"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Jantar/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/suco de goiaba/)
    expect(rendered).to match(/pepino/)
    expect(rendered).to match(/chocolate/)
  end
end
