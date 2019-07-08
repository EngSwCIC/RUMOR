require 'rails_helper'

RSpec.describe "hora_de_funcionamentos/edit", type: :view do
  before(:each) do
    @hora_de_funcionamento = assign(:hora_de_funcionamento, HoraDeFuncionamento.create!(
      :dia => "MyString",
      :inicio => "MyString",
      :fechamento => "MyString"
    ))
  end

  it "renders the edit hora_de_funcionamento form" do
    render

    assert_select "form[action=?][method=?]", hora_de_funcionamento_path(@hora_de_funcionamento), "post" do

      assert_select "input[name=?]", "hora_de_funcionamento[dia]"

      assert_select "input[name=?]", "hora_de_funcionamento[inicio]"

      assert_select "input[name=?]", "hora_de_funcionamento[fechamento]"
    end
  end
end
