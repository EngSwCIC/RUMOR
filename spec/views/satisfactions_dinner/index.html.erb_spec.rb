require 'rails_helper'

RSpec.describe "satisfactions_dinner/index", type: :view do
  before(:each) do
    assign(:customer_satisfactions, [
      CustomerSatisfaction.create!(
        :user_group => 1,
        :meal => "Janta",
        :rating => 3,
        :like => "foi top",
        :disgust => "acabou",
        :suggestion => "poderia ter mais"
      )
    ])
end
  it "renders a list of satisfactions_dinner" do
    render
    assert_select "tr>td", :text => 1.to_s
    assert_select "tr>td", :text => "Janta".to_s
    assert_select "tr>td", :text => 3.to_s
    assert_select "tr>td", :text => "foi top".to_s
    assert_select "tr>td", :text => "acabou".to_s
    assert_select "tr>td", :text => "poderia ter mais".to_s
    
  end
end
