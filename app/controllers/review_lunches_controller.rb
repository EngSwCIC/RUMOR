  ##
  # classe de controller das avaliações de um jantar.
class ReviewLunchesController < ApplicationController
  before_action :set_review_lunch, only: [:edit, :update, :destroy]
  before_action :set_lunch
  before_action :authenticate_user!

  ##
  # Esse método cria uma nova instância de ReviewLunches
  # ReviewLunches é composto dos campos:
  # user_id: User.id
  # rating: integer
  # comment: string
  # lunch_id: lunch.id
  def new
    @review_lunch = ReviewLunch.new
  end

  # GET /review_lunches/1/edit
  def edit
  end

  ##
  # Esse método cria uma nova instância de ReviewLunches e adiciona ao banco de dados.
  # Esse método também vincula um ReviewLunches a um Breakfast e a um User
  def create
    @review_lunch = ReviewLunch.new(review_lunch_params)
    @review_lunch.user_id = current_user.id
    @review_lunch.lunch_id = @lunch.id

    respond_to do |format|
      if @review_lunch.save
        format.html { redirect_to @lunch, notice: 'Review lunch was successfully created.' }
        format.json { render :show, status: :created, location: @review_lunch }
      else
        format.html { render :new }
        format.json { render json: @review_lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  ##
  # Esse método atualiza uma edição em um ReviewLunches
  # Podem ser atualizados os campos rating e comment.
  def update
    respond_to do |format|
      if @review_lunch.update(review_lunch_params)
        format.html { redirect_to @lunch, notice: 'Review lunch was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_lunch }
      else
        format.html { render :edit }
        format.json { render json: @review_lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  ##
  # Esse método remove um ReviewLunches do banco.
  # Caso ocorra com sucesso uma mensagem informa o usuário
  def destroy
    @review_lunch.destroy
    respond_to do |format|
      format.html { redirect_to @lunch, notice: 'Review lunch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_lunch
      @review_lunch = ReviewLunch.find(params[:id])
    end

    def set_lunch
      @lunch = Lunch.find(params[:lunch_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_lunch_params
      params.require(:review_lunch).permit(:rating, :comment)
    end
end
