class MenuReviewsController < ApplicationController
  def index

  end

  def show

  end

  def new
    # default: render 'new' template
  end

  def create

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