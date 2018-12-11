#Essa controller contem os metodos de CRUD e auxiliares para a pagina de consultar um cardapio
class WelcomeController < ApplicationController
  #Esse metodo controla a view "welcome/index"
  def index 
    definir_cardapio()
  end

  #Esse metodo confere se o @cardapio buscado pela model Cardapio com o metodo "search_cardapio" teve retorno NULL
  def definir_cardapio
    @ru = Ru.search_nota(params[:campus])
    @cardapio = Cardapio.search_cardapio(params[:data],params[:campus])
    return if @cardapio.nil?
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