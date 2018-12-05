require 'rails_helper'

RSpec.describe MenuReviewsController, type: :controller do
  let(:valid_attributes) {
    { nome: 'Luiz',
      email: 'teste@teste.com',
      tipo_usuario: 'Aluno',
      refeicao: 'Jantar',
      categoria: 'Sopa',
      nota: '4',
      consideracao: 'muito boa'
    }
  }
  
  let(:invalid_attributes) {
    { nome: 'Luiz',
      email: '',
      tipo_usuario: '',
      refeicao: 'Jantar',
      categoria: 'Sopa',
      nota: '',
      consideracao: ''
    }
  }

  describe "POST #create" do
    context "utilizando entradas válidas" do
      it "salva a pesquisa do cardápio no banco de dados" do
        expect{
          post :create, params: {menu_review: valid_attributes}
        }.to change(MenuReview, :count).by(1)
      end
      it "redireciona para a página inicial do Rumor" do
        post :create, params: {menu_review: valid_attributes}
        expect(response).to redirect_to rumor_index_path
      end
    end
    
    context "utilizando entradas inválidas" do
      it "não salva a pesquisa do cardápio no banco de dados" do
        expect{
          post :create, params: {menu_review: invalid_attributes}
        }.to_not change(MenuReview, :count)
      end
      it "renderiza novamente o formulário para preenchimento" do
        post :create, params: {menu_review: invalid_attributes}
        expect(response).to render_template :new
      end
    end
  end

  describe "GET #new" do
    it "cria com sucesso uma pesquisa de cardápio" do
      get :new
      expect(response).to be_successful
    end
  end

end