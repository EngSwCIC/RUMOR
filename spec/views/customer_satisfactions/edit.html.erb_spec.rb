require 'rails_helper'

RSpec.describe "customer_satisfactions/edit", type: :view do
  before(:each) do
    @customer_satisfaction = assign(:customer_satisfaction, CustomerSatisfaction.create!(
      :user_group => 1,
      :meal => "Almoço",
      :rating => 1,
      :like => "bom",
      :disgust => "ruim",
      :suggestion => "ter abacaxi"
    ))
  end

  it "renders the edit customer_satisfaction form" do
    render

    assert_select "form[action=?][method=?]", customer_satisfaction_path(@customer_satisfaction), "post" do

      assert_select "input[name=?]", "customer_satisfaction[user_group]"

      assert_select "input[name=?]", "customer_satisfaction[meal]"

      assert_select "input[name=?]", "customer_satisfaction[rating]"

      assert_select "textarea[name=?]", "customer_satisfaction[like]"

      assert_select "textarea[name=?]", "customer_satisfaction[disgust]"

      assert_select "textarea[name=?]", "customer_satisfaction[suggestion]"
    end
  end
end
