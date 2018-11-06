class CustomerSatisfactionsController < ApplicationController
  before_action :set_customer_satisfaction, only: [:show, :edit, :update, :destroy]

  # GET /customer_satisfactions
  # GET /customer_satisfactions.json
  def index
    @customer_satisfactions = CustomerSatisfaction.all
    # @customer_satisfaction_collect = CustomerSatisfaction.all.collect{ |c| [c.user_group, c.rating]}
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "relatorio"   # Excluding ".pdf" extension.
        layout: 'pdf'
      end
    end
  end

  # GET /customer_satisfactions/1
  # GET /customer_satisfactions/1.json
  def show
  end

  # GET /customer_satisfactions/new
  def new
    @customer_satisfaction = CustomerSatisfaction.new
  end

  # GET /customer_satisfactions/1/edit
  def edit
  end

  # POST /customer_satisfactions
  # POST /customer_satisfactions.json
  def create
    @customer_satisfaction = CustomerSatisfaction.new(customer_satisfaction_params)

    respond_to do |format|
      if @customer_satisfaction.save
        format.html { redirect_to @customer_satisfaction, notice: 'Customer satisfaction was successfully created.' }
        format.json { render :show, status: :created, location: @customer_satisfaction }
      else
        format.html { render :new }
        format.json { render json: @customer_satisfaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_satisfactions/1
  # PATCH/PUT /customer_satisfactions/1.json
  def update
    respond_to do |format|
      if @customer_satisfaction.update(customer_satisfaction_params)
        format.html { redirect_to @customer_satisfaction, notice: 'Customer satisfaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_satisfaction }
      else
        format.html { render :edit }
        format.json { render json: @customer_satisfaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_satisfactions/1
  # DELETE /customer_satisfactions/1.json
  def destroy
    @customer_satisfaction.destroy
    respond_to do |format|
      format.html { redirect_to customer_satisfactions_url, notice: 'Customer satisfaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def charts
    @customer_satisfactions = CustomerSatisfaction.all.collect{ |c| [c.user_group, c.rating]}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_satisfaction
      @customer_satisfaction = CustomerSatisfaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_satisfaction_params
      params.require(:customer_satisfaction).permit(:user_group, :meal, :rating, :like, :disgust, :suggestion)
    end
end
