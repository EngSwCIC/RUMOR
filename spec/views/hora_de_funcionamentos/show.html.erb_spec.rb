require 'rails_helper'

RSpec.describe "hora_de_funcionamentos/show", type: :view do
  before(:each) do
    @hora_de_funcionamento = assign(:hora_de_funcionamento, HoraDeFuncionamento.create!(
      :dia => "Dia",
      :inicio => "Inicio",
      :fechamento => "Fechamento"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Dia/)
    expect(rendered).to match(/Inicio/)
    expect(rendered).to match(/Fechamento/)
  end
end
