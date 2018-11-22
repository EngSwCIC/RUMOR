class RuReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
    # default: render 'new' template
    @ru_review = RuReview.new
  end

  def create
    @ru_review = RuReview.new(ru_review_params)
    if @ru_review.save
      flash[:notice] = "Avaliação do RU enviada com sucesso"
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

  def ru_review_params
    params.require(:ru_review).permit(:nome, :email, :tipo_usuario, :nota_limpeza_restaurante, 
    :nota_limpeza_banheiro, :nota_caixa, :nota_porta_objetos, :consideracao)
  end

end
