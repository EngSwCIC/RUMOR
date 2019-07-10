require 'rails_helper'

RSpec.describe "hora_de_funcionamentos/index", type: :view do
  before(:each) do
    assign(:hora_de_funcionamentos, [
      HoraDeFuncionamento.create!(
        :dia => "Dia",
        :inicio => "Inicio",
        :fechamento => "Fechamento"
      ),
      HoraDeFuncionamento.create!(
        :dia => "Dia",
        :inicio => "Inicio",
        :fechamento => "Fechamento"
      )
    ])
  end

  it "renders a list of hora_de_funcionamentos" do
    render
    assert_select "tr>td", :text => "Dia".to_s, :count => 2
    assert_select "tr>td", :text => "Inicio".to_s, :count => 2
    assert_select "tr>td", :text => "Fechamento".to_s, :count => 2
  end
end
