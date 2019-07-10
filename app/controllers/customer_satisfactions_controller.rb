class CustomerSatisfactionsController < ApplicationController
  # Funções para serem realizadas antes de qualquer método do controlador
  # O only indica onde em quais métodos elas serão executadas antes
  # No caso a set_customer que é uma função para definir exatamente qual pesquisa
  # É chamada antes dos métodos show, edit, update e destroy
  # A segunda função é uma função padrão do devise que é chamada para verificar o usuario logado
  before_action :set_customer_satisfaction, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :charts]

  # Método Index é chamado de duas maneiras
  # O intuito dele é retornar todos as pesquisas feitas pelo usuário
  # A diferença é dada por qual formato ele será renderizado
  # Caso o admin queria ver somente pela web ele irá renderizar o formato html
  # Mas caso queria baixar a planilha, ele terá um formato pdf
  def index
     @customer_satisfactions = CustomerSatisfaction.order('rating DESC').all
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "relatorio"   
      end
    end
  end

  # Método que é responsável por retornar um objeto
  # Esse objeto é os dados especificos de uma pesquisa
  def show
  end

  # Método que é chamado ao ir para a página de formulário de pesquisa
  # Ele é responsável por instanciar um novo objeto
  # Objeto que será utilizado em conjunto com o método create
  def new
    @customer_satisfactions = CustomerSatisfaction.all
  end

  # Método que retorna um objeto específico da pesquisa
  # trabalha em conjunto com o método update
  def edit
  end

  
  # Método chamado após o new
  # Ao passar os parametros uma novo pesquisa foi criada
  # Apos isso ele verifica se foi possível salvar o objeto no banco
  # Caso consigo ele voltará a chamar o método index
  # Caso contrário ele irá renderizar o método new
  def create
    @customer_satisfaction = CustomerSatisfaction.new(customer_satisfaction_params)
    if @customer_satisfaction.save
      redirect_to @customer_satisfaction, notice: 'Pesquisa de Satisfação criada com sucesso.'
    else
      render :new 
    end
  
  end

  # Trabalha em conjunto com método edit
  # Os parametros são passado e passando para um função update
  # Caso as alterações consigam ser salvas no banco ele voltará para a página do método index
  # Caso contrário irá chamar novamente a página do index edit
  def update
    if @customer_satisfaction.update(customer_satisfaction_params)
      redirect_to @customer_satisfaction, notice: 'Pesquisa de Satisfação atualizada com sucesso.'
    else
      render :edit
    end
    
  end

  # Método chamado para deletar um objeto no banco de dados
  # Ao terminar de apagar ele é redirecionado para a página que utiliza o index
  def destroy
    @customer_satisfaction.destroy
  
    redirect_to customer_satisfactions_url, notice: 'Pesquisa de Satisfação excluida com sucesso.'
  
  end

  # Método adiconal
  # Não está presente no Famoso CRUD do rails
  # Tem uma utilização específica no sistema
  # Ele é chamado ao se tentar ver a página de gráficos
  # São feitas 6 pesquisas no banco de dados para serem aplicadas em gráficos diferentes
  # Os três primeiros estão contando o total de acontecimentos nos atributos meal, rating e user_group
  # Os três últimos estão agrupando por usuário e realizando a contagem das notos dos usuários
  def charts
    @line_chart = CustomerSatisfaction.group(:meal).count
    @pie_chart = CustomerSatisfaction.group(:rating).count
    @column_chart = CustomerSatisfaction.group(:user_group).count


    @customer_by_rating_1 = CustomerSatisfaction.where(user_group: 1).group(:rating).count
    @customer_by_rating_2 = CustomerSatisfaction.where(user_group: 2).group(:rating).count
    @customer_by_rating_3 = CustomerSatisfaction.where(user_group: 3).group(:rating).count
  end

  # Método privado do controller
  # Não pode ser usado em outro controler
  # O Primerio método procura um objeto no banco de dados quando disponibilizado um id para a busca
  # O segundo está requisitando e verificando os parametros passado para o controller
  private
    def set_customer_satisfaction
      @customer_satisfaction = CustomerSatisfaction.find(params[:id])
    end

    def customer_satisfaction_params
      params.require(:customer_satisfaction).permit(:user_group, :meal, :rating, :like, :disgust, :suggestion)
    end
end
