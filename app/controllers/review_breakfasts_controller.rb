  ##
  # classe de controller das avaliações de um café da manhã
class ReviewBreakfastsController < ApplicationController
  before_action :set_review_breakfast, only: [:edit, :update, :destroy]
  before_action :set_breakfast
  before_action :authenticate_user!
  ##
  # Esse método cria uma nova instância de ReviewBreakfast
  # ReviewBreakfast é composto dos campos:
  # user_id: User.id
  # rating: integer
  # comment: string
  # breakfast_id: Breakfast.id
  def new
    @review_breakfast = ReviewBreakfast.new
  end

  # GET /review_breakfasts/1/edit
  def edit
  end
  ##
  # Esse método cria uma nova instância de ReviewBreakfast e adiciona ao banco de dados.
  # Esse método também vincula um ReviewBreakfast a um Breakfast e a um User
  def create
    @review_breakfast = ReviewBreakfast.new(review_breakfast_params)
    @review_breakfast.user_id = current_user.id
    @review_breakfast.breakfast_id = @breakfast.id

    respond_to do |format|
      if @review_breakfast.save
        format.html { redirect_to @breakfast, notice: 'Review breakfast was successfully created.' }
        format.json { render :show, status: :created, location: @review_breakfast }
      else
        format.html { render :new }
        format.json { render json: @review_breakfast.errors, status: :unprocessable_entity }
      end
    end
  end
  ##
  # Esse método atualiza uma edição em um ReviewBreakfast
  # Podem ser editados os campos rating e comment.
  def update
    respond_to do |format|
      if @review_breakfast.update(review_breakfast_params)
        format.html { redirect_to @breakfast, notice: 'Review breakfast was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_breakfast }
      else
        format.html { render :edit }
        format.json { render json: @review_breakfast.errors, status: :unprocessable_entity }
      end
    end
  end
  ##
  # Esse método remove um ReviewBreakfast do banco.
  # Caso ocorra com sucesso uma mensagem informa o usuário
  def destroy
    @review_breakfast.destroy
    respond_to do |format|
      format.html { redirect_to @breakfast, notice: 'Review breakfast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_breakfast
      @review_breakfast = ReviewBreakfast.find(params[:id])
    end

    def set_breakfast
      @breakfast = Breakfast.find(params[:breakfast_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_breakfast_params
      params.require(:review_breakfast).permit(:rating, :comment)
    end
end
