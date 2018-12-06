class BreakfastsController < ApplicationController
  # Funções para serem realizadas antes de qualquer método do controlador
  # O only indica onde em quais métodos elas serão executadas antes
  # No caso a set_breakfast que é uma função para definir exatamente qual café da manhã
  # É chamada antes dos métodos show, edit, update e destroy
  # A segunda função é uma função padrão do devise que é chamada para verificar o usuario logado
  before_action :set_breakfast, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # Método index é chamado para ir à página onde todos os cafés da manhã registrdos são mostrados
  def index
    @breakfasts = Breakfast.all
  end

  # Método responsável por retornar os dados de um registro de café da manhã específico
  def show
  end

  # Método que é chamado ao ir para a página de cadastro de café da manhã
  # Ele é responsável por instanciar um novo objeto
  # Objeto que será utilizado em conjunto com o método create
  def new
    @breakfast = Breakfast.new
    @menus = Menu.all
  end

  # Método que retorna um objeto específico de café da manhã para ser editado
  # trabalha em conjunto com o método update
  def edit
  end

  # Método chamado após o new, para criar um novo café da manhã
  # Caso consigo ele voltará a chamar o método index
  # Caso contrário ele irá renderizar o método new
  def create
    @breakfast = Breakfast.new(breakfast_params)
      if @breakfast.save
        @menu = Menu.find(@breakfast.menu_id)
        redirect_to @menu, notice: 'Desjejum criado com sucesso'
      else
        render :new, locals: { :menu_id => :menu_id }
      end
  end

  # Trabalha em conjunto com método edit
  # Os parametros são passado e passando para um função update
  # Caso as alterações consigam ser salvas no banco ele voltará para a página do método index
  # Caso contrário irá chamar novamente a página do index edit
  def update
      if @breakfast.update(breakfast_params)
        @menu = Menu.find(@breakfast.menu_id)
        redirect_to @menu, notice: 'Desjejum atualizado com sucesso.'
      else
        render :edit, locals: { :menu_id => :menu_id }
      end
  end

  # Método chamado para deletar um objeto no banco de dados
  # Ao terminar de apagar ele é redirecionado para a página que utiliza o index
  def destroy
    begin
      @breakfast.destroy
      flash[:notice] = 'Desjejum excluido com sucesso'
      redirect_to breakfasts_url
    end
  end


  private
  # Método privado do controller
  # Não pode ser usado em outro controler
  # O método procura um objeto no banco de dados quando disponibilizado um id para a busca
    def set_breakfast
      @breakfast = Breakfast.find(params[:id])
    end
  # Método privado do controller
  # Não pode ser usado em outro controler
  # O método está requisitando e verificando os parametros passados para o controller
    def breakfast_params
      params.require(:breakfast).permit(:menu_id, :hot_drinks, :vegetarian_drink, :chocolate_milk, :bread, :vegetarian_bread, :margarine, :vegetarian_margarine, :complement, :vegetarian_complement, :fruit)
    end
end
