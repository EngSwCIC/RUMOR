class ReviewDinnersController < ApplicationController
  before_action :set_review_dinner, only: [:edit, :update, :destroy]
  before_action :set_dinner
  before_action :authenticate_user!

  # GET /review_dinners/new
  def new
    @review_dinner = ReviewDinner.new
  end

  # GET /review_dinners/1/edit
  def edit
  end

  # POST /review_dinners
  # POST /review_dinners.json
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

  # PATCH/PUT /review_dinners/1
  # PATCH/PUT /review_dinners/1.json
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

  # DELETE /review_dinners/1
  # DELETE /review_dinners/1.json
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
