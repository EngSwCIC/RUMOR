class LunchesController < ApplicationController
  # Funções para serem realizadas antes de qualquer método do controlador
  # O only indica onde em quais métodos elas serão executadas antes
  # No caso a set_lunch que é uma função para definir exatamente qual almoço
  # É chamada antes dos métodos show, edit, update e destroy
  # A segunda função é uma função padrão do devise que é chamada para verificar o usuario logado
before_action :set_lunch, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # Método index é chamado para ir à página onde todos os almoços registrdos são mostrados
  def index
    @lunches = Lunch.all
  end

  # Método responsável por retornar os dados de um registro de almoço específico
  def show
  end

  # Método que é chamado ao ir para a página de cadastro de almoço
  # Ele é responsável por instanciar um novo objeto
  # Objeto que será utilizado em conjunto com o método create
  def new
    @lunch = Lunch.new
    @menus = Menu.all
  end

  # Método que retorna um objeto específico de almoço para ser editado
  # trabalha em conjunto com o método update
  def edit
  end

  # Método chamado após o new, para criar um novo almoço
  # Caso consigo ele voltará a chamar o método index
  # Caso contrário ele irá renderizar o método new
  def create
    @lunch = Lunch.new(lunch_params)
      if @lunch.save
        @menu = Menu.find(@lunch.menu_id)
        redirect_to @menu, notice: 'Almoço criado com sucesso'
      else
        render :new, locals: { :menu_id => :menu_id }
      end
  end

  # Trabalha em conjunto com método edit
  # Os parametros são passado e passando para um função update
  # Caso as alterações consigam ser salvas no banco ele voltará para a página do método index
  # Caso contrário irá chamar novamente a página do index edit
  def update
      if @lunch.update(lunch_params)
        @menu = Menu.find(@lunch.menu_id)
        redirect_to @menu, notice: 'Almoço atualizado com sucesso'
      else
        render :edit, locals: { :menu_id => :menu_id }
      end
  end

  # Método chamado para deletar um objeto no banco de dados
  # Ao terminar de apagar ele é redirecionado para a página que utiliza o index
  def destroy
    begin
      @lunch.destroy
      flash[:notice] = 'Almoço excluido com sucesso'
      redirect_to lunches_url
    end
  end

  private
  # Método privado do controller
  # Não pode ser usado em outro controler
  # O método procura um objeto no banco de dados quando disponibilizado um id para a busca
    def set_lunch
      @lunch = Lunch.find(params[:id])
    end

  # Método privado do controller
  # Não pode ser usado em outro controler
  # O método está requisitando e verificando os parametros passados para o controller
    def lunch_params
      params.require(:lunch).permit(:menu_id, :salad, :sauce, :main_course, :garnish, :vegetarian_dish, :accompaniments, :dessert, :juice)
    end
end
