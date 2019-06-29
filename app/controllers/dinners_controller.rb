class DinnersController < ApplicationController
  # Funções para serem realizadas antes de qualquer método do controlador
  # O only indica onde em quais métodos elas serão executadas antes
  # No caso a set_dinner que é uma função para definir exatamente qual jantar
  # É chamada antes dos métodos show, edit, update e destroy
  # A segunda função é uma função padrão do devise que é chamada para verificar o usuario logado
  before_action :set_dinner, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  # Método index é chamado para ir à página onde todos os jantares registrdos são mostrados
  def index
    @dinners = Dinner.all
  end

  # Método responsável por retornar os dados de um registro de jantar específico
  def show
    @review_dinner = ReviewDinner.where(dinner_id: @dinner.id)
    if @review_dinner.blank?
      @avg_rating = 0
    else
      @avg_rating = @review_dinner.average(:rating).round(2)
    end
  end

  # Método que é chamado ao ir para a página de cadastro de jantar
  # Ele é responsável por instanciar um novo objeto
  # Objeto que será utilizado em conjunto com o método create
  def new
    @dinner = Dinner.new
    @menus = Menu.all
  end

  # Método que retorna um objeto específico de jantar para ser editado
  # trabalha em conjunto com o método update
  def edit
  end

  # Método chamado após o new, para criar um novo jantar
  # Caso consigo ele voltará a chamar o método index
  # Caso contrário ele irá renderizar o método new
  def create
    @dinner = Dinner.new(dinner_params)
      if @dinner.save
        @menu = Menu.find(@dinner.menu_id)
        redirect_to @menu, notice: 'Jantar criado com sucesso'
      else
        render :new, locals: { :menu_id => :menu_id }
      end
  end

  # Trabalha em conjunto com método edit
  # Os parametros são passado e passando para um função update
  # Caso as alterações consigam ser salvas no banco ele voltará para a página do método index
  # Caso contrário irá chamar novamente a página do index edit
  def update
      if @dinner.update(dinner_params)
        @menu = Menu.find(@dinner.menu_id)
        redirect_to @menu, notice: 'Jantar atualizado com sucesso'
      else
        render :edit, locals: { :menu_id => :menu_id }
      end
  end

  # Método chamado para deletar um objeto no banco de dados
  # Ao terminar de apagar ele é redirecionado para a página que utiliza o index
  def destroy
    begin
      @dinner.destroy
      flash[:notice] = 'Jantar excluido com sucesso'
      redirect_to dinners_url
    end
  end



  private
    # Método privado do controller
    # Não pode ser usado em outro controler
    # O método procura um objeto no banco de dados quando disponibilizado um id para a busca
    def set_dinner
        @dinner = Dinner.find(params[:id])
    end
    # Método privado do controller
    # Não pode ser usado em outro controler
    # O método está requisitando e verificando os parametros passados para o controller
    def dinner_params
      params.require(:dinner).permit(:menu_id, :salad, :sauce, :soup, :main_course, :vegetarian_dish, :accompaniments, :dessert, :juice)
    end
end
