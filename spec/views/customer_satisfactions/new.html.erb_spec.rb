require 'rails_helper'

RSpec.describe "customer_satisfactions/new", type: :view do
  before(:each) do
    assign(:customer_satisfaction, CustomerSatisfaction.new(
      :user_group => 1,
      :meal => "Desejum",
      :rating => 1,
      :like => "quero café",
      :disgust => "amora",
      :suggestion => "pão de queijo"
    ))
  end

  it "renders new customer_satisfaction form" do
    render

    assert_select "form[action=?][method=?]", customer_satisfactions_path, "post" do

      assert_select "input[name=?]", "customer_satisfaction[group]"

      assert_select "input[name=?]", "customer_satisfaction[meal]"

      assert_select "input[name=?]", "customer_satisfaction[rating]"

      assert_select "textarea[name=?]", "customer_satisfaction[like]"

      assert_select "textarea[name=?]", "customer_satisfaction[disgust]"

      assert_select "textarea[name=?]", "customer_satisfaction[suggestion]"
    end
  end
end
