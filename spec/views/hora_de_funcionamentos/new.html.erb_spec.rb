require 'rails_helper'

RSpec.describe "hora_de_funcionamentos/new", type: :view do
  before(:each) do
    assign(:hora_de_funcionamento, HoraDeFuncionamento.new(
      :dia => "MyString",
      :inicio => "MyString",
      :fechamento => "MyString"
    ))
  end

  it "renders new hora_de_funcionamento form" do
    render

    assert_select "form[action=?][method=?]", hora_de_funcionamentos_path, "post" do

      assert_select "input[name=?]", "hora_de_funcionamento[dia]"

      assert_select "input[name=?]", "hora_de_funcionamento[inicio]"

      assert_select "input[name=?]", "hora_de_funcionamento[fechamento]"
    end
  end
end
