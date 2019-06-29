class ReviewBreakfastsController < ApplicationController
  before_action :set_review_breakfast, only: [:edit, :update, :destroy]
  before_action :set_breakfast
  before_action :authenticate_user!

  # GET /review_breakfasts/new
  def new
    @review_breakfast = ReviewBreakfast.new
  end

  # GET /review_breakfasts/1/edit
  def edit
  end

  # POST /review_breakfasts
  # POST /review_breakfasts.json
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

  # PATCH/PUT /review_breakfasts/1
  # PATCH/PUT /review_breakfasts/1.json
  def update
    respond_to do |format|
      if @review_breakfast.update(review_breakfast_params)
        format.html { redirect_to @review_breakfast, notice: 'Review breakfast was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_breakfast }
      else
        format.html { render :edit }
        format.json { render json: @review_breakfast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_breakfasts/1
  # DELETE /review_breakfasts/1.json
  def destroy
    @review_breakfast.destroy
    respond_to do |format|
      format.html { redirect_to review_breakfasts_url, notice: 'Review breakfast was successfully destroyed.' }
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
