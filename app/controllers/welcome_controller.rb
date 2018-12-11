#Essa controller contem os metodos de CRUD e auxiliares para a pagina de consultar um cardapio
class WelcomeController < ApplicationController
  #Esse metodo controla a view "welcome/index"
  def index 
    definir_cardapio()
  end

  #Esse metodo confere se o @cardapio buscado pela model Cardapio com o metodo "search_cardapio" teve retorno NULL
  def definir_cardapio
    @cardapio = Cardapio.search_cardapio(params[:data],params[:campus])
    puts "aqui"
    puts @cardapio
    return if @cardapio.nil?
  end

  def show; end

  #Esse metodo instancia um novo @cardapio
  def new
    @menu_review = MenuReview.new
  end

  def edit; end

  #Esse metodo cria um novo @cardapio e o salva - nao utilizado porque enquanto usuario é possivel somente buscar um cardapio
  def create
    @menu_review = MenuReview.new(menu_review_params)
    if @menu_review.save
      flash[:notice] = "Avaliação enviada com sucesso"
      redirect_to welcome_index_path
    else
      render 'new'
    end
  end
  
  #Esse metodo destroi um @cardapio
  def destroy; end

  private
  def set_cardapio
    @cardapio = Cardapio.find(params[:id])
  end

  #Esse metodo define quais parametros podem ser alterados
  def cardapio_params
    params.require(:cardapios).permit(:data, :campus)
  end

  def menu_review_params
    params.require(:menu_review).permit(:nome, :email, :tipo_usuario, :refeicao, :categoria, :nota, :consideracao)
  end
end

