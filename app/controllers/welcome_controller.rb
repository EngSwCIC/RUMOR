#Essa controller contem os metodos de CRUD e auxiliares para a pagina de consultar um cardapio
class WelcomeController < ApplicationController
  #Esse metodo controla a view "welcome/index"
  def index 
    definir_cardapio()
  end

  #Esse metodo confere se o @cardapio buscado pela model Cardapio com o metodo "search_cardapio" teve retorno NULL
  def definir_cardapio
    @cardapio = Cardapio.search_cardapio(params[:data],params[:campus])
    return if @cardapio.nil?
  end

  def show; end

  #Esse metodo instancia um novo @cardapio
  def new
    @cardapio = Cardapio.new
  end

  def edit; end

  #Esse metodo cria um novo @cardapio e o salva - nao utilizado porque enquanto usuario é possivel somente buscar um cardapio
  def create
    @cardapio = Cardapio.new(cardapio_params)

    respond_to do |format|
      if @cardapio.save
        format.html { redirect_to @cardapio, notice: 'Cardapio was successfully created.' }
        format.json { render :show, status: :created, campus: @cardapio }
      else
        format.html { render :new }
        format.json { render json: @cardapio.errors, status: :unprocessable_entity }
      end
    end
  end
  
  #Esse metodo destroi um @cardapio
  def destroy
    @cardapio.destroy
    respond_to do |format|
      format.html { redirect_to index_url, notice: 'Cardapio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_cardapio
    @cardapio = Cardapio.find(params[:id])
  end

  #Esse metodo define quais parametros podem ser alterados
  def cardapio_params
    params.require(:cardapios).permit(:data, :campus)
  end
end

