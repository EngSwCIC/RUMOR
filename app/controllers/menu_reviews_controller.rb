class MenuReviewsController < ApplicationController
  def index

  end

  def show

  end

  def new
    # default: render 'new' template
    @menu_review = MenuReview.new
  end

  def create
    @menu_review = MenuReview.new(menu_review_params)
    if @menu_review.save
      flash[:notice] = "Avaliação enviada com sucesso"
      redirect_to rumor_index_path
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