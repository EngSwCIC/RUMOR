class MenuReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
    # renderiza template new
    @menu_review = MenuReview.new
  end

  # Avaliação de cardápio cadastrada com sucesso apresenta mensagem na tela.
  # Se houver erros renderiza novamente o template da avaliação de cardápio.
  def create
    @menu_review = MenuReview.new(menu_review_params)
    if @menu_review.save
      flash[:notice] = "Avaliação enviada com sucesso"
      redirect_to welcome_index_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def menu_review_params
    params.require(:menu_review).permit(:nome, :email, :tipo_usuario, :refeicao, :categoria, :nota, :consideracao)
  end

end