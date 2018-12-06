class RuReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
    # renderiza template new
    @ru_review = RuReview.new
  end

  #Avaliação de estabelecimento cadastrada com sucesso apresenta mensagem na tela.
  # Se houver erros renderiza novamente o template da avaliação do estabelecimento.
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
