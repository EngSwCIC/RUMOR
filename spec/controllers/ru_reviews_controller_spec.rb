require 'rails_helper'

RSpec.describe RuReviewsController, type: :controller do
  let(:valid_attributes) {
    { nome: 'Luiz',
      email: 'teste@teste.com',
      tipo_usuario: 'Aluno',
      nota_limpeza_restaurante: '2', 
      nota_limpeza_banheiro: '1', 
      nota_caixa: '5', 
      nota_porta_objetos: '4', 
      consideracao: 'Melhorar '
    }
  }
  
  let(:invalid_attributes) {
    { nome: 'Luiz',
      email: '',
      tipo_usuario: '',
      nota_limpeza_restaurante: '', 
      nota_limpeza_banheiro: '', 
      nota_caixa: '', 
      nota_porta_objetos: '', 
      consideracao: 'Melhorar '
    }
  }

  describe "POST #create" do
    context "utilizando entradas válidas" do
      it "salva a pesquisa do estabelecimento no banco de dados" do
        expect{
          post :create, params: {ru_review: valid_attributes}
        }.to change(RuReview, :count).by(1)
      end
      it "redireciona para a página inicial do Rumor" do
        post :create, params: {ru_review: valid_attributes}
        expect(response).to redirect_to rumor_index_path
      end
    end
    
    context "utilizando entradas inválidas" do
      it "não salva a pesquisa do estabelecimento no banco de dados" do
        expect{
          post :create, params: {ru_review: invalid_attributes}
        }.to_not change(RuReview, :count)
      end
      it "renderiza novamente o formulário para preenchimento" do
        post :create, params: {ru_review: invalid_attributes}
        expect(response).to render_template :new
      end
    end
  end

  describe "GET #new" do
    it "cria com sucesso uma pesquisa do estabelecimento" do
      get :new
      expect(response).to be_success
    end
  end
end
