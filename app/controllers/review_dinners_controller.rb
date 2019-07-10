  ##
  # classe de controller das avaliações de um jantar.
class ReviewDinnersController < ApplicationController
  before_action :set_review_dinner, only: [:edit, :update, :destroy]
  before_action :set_dinner
  before_action :authenticate_user!

  ##
  # Esse método cria uma nova instância de ReviewDinner
  # ReviewDinner é composto dos campos:
  # user_id: User.id
  # rating: integer
  # comment: string
  # dinner_id: dinner.id
  def new
    @review_dinner = ReviewDinner.new
  end

  # GET /review_dinners/1/edit
  def edit
  end

  ##
  # Esse método cria uma nova instância de ReviewDinner e adiciona ao banco de dados.
  # Esse método também vincula um ReviewDinner a um Breakfast e a um User
  def create
    @review_dinner = ReviewDinner.new(review_dinner_params)
    @review_dinner.user_id = current_user.id
    @review_dinner.dinner_id = @dinner.id

    respond_to do |format|
      if @review_dinner.save
        format.html { redirect_to @dinner, notice: 'Review dinner was successfully created.' }
        format.json { render :show, status: :created, location: @review_dinner }
      else
        format.html { render :new }
        format.json { render json: @review_dinner.errors, status: :unprocessable_entity }
      end
    end
  end

  ##
  # Esse método atualiza uma edição em um ReviewDinner
  # Podem ser atualizados os campos rating e comment.
  def update
    respond_to do |format|
      if @review_dinner.update(review_dinner_params)
        format.html { redirect_to @dinner, notice: 'Review dinner was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_dinner }
      else
        format.html { render :edit }
        format.json { render json: @review_dinner.errors, status: :unprocessable_entity }
      end
    end
  end

  ##
  # Esse método remove um ReviewDinner do banco.
  # Caso ocorra com sucesso uma mensagem informa o usuário
  def destroy
    @review_dinner.destroy
    respond_to do |format|
      format.html { redirect_to @dinner, notice: 'Review dinner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_dinner
      @review_dinner = ReviewDinner.find(params[:id])
    end

    def set_dinner
      @dinner = Dinner.find(params[:dinner_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_dinner_params
      params.require(:review_dinner).permit(:rating, :comment)
    end
end
