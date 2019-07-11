class UsersController < ApplicationController
  # Função que permite que apenas usuarios logados podem gerir usuarios
  before_action :authenticate_user!
  # O set_user seleciona o usuario da base de dados antes das operações indicadas
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  ##
  # GET /users
  #
  # Método que seleciona todos os usuarios
  def index
    @users = User.all
  end

  ##
  # GET /users/1
  #
  # Método que seleciona um usuario
  def show
  end

  ##
  # GET /users/new
  #
  # Método responsável por instanciar um novo usuario
  def new
    @user = User.new
  end

  ##
  # GET /users/1/edit
  #
  # Método que seleciona um usuario.
  # Os dados desse usuario são utilizados no form de edição
  def edit
  end

  ##
  # POST /users
  #
  # Metodo que cadastra um novo usuario baseado nos parametros recebidos do form
  def create
    @user = User.new(user_params)
    respond_to do |format|
      # Tenta salvar o usuario no banco de dados
      if @user.save
        # Caso sucesso
        # Redireciona para a pagina de index de usuarios e mostra mensagem de sucesso
        format.html { redirect_to users_path, notice: 'usuario criado com sucesso' }
      else
        # Caso Fracasso
        # Em caso de falha renderiza novamente a pagina com mensagens de erro
        format.html { render :new }
      end
    end
  end

  ##
  # PATCH/PUT /users/1
  #
  # Metodo que atualiza um usuario baseado nos parametros recebidos do form
  def update
    respond_to do |format|
      # Atualiza usuario no banco de dados
      if @user.update(user_params)
        # Passa por cima da implementação do devise
        bypass_sign_in @user
        # Redireciona para a pagina de index de usuarios e mostra mensagem de sucesso
        format.html { redirect_to users_path, notice: 'usuario editado com sucesso' }
      else
        # Em caso de falha renderiza novamente a pagina com mensagens de erro
        format.html { render :edit }
      end
    end
  end

  ##
  # DELETE /users/1
  #
  # Método que delete um usuario baseado no id
  def destroy
    @user.destroy
    respond_to do |format|
      # Redireciona para a pagina de index de usuarios e mostra mensagem de sucesso
      format.html { redirect_to users_url, notice: 'usuario apagado com sucesso' }
    end
  end

  private
    # Seleciona usuario
    def set_user
      @user = User.find(params[:id])
    end

    # Seleciona os parametros que serão aceitos nas requests para o controller
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
