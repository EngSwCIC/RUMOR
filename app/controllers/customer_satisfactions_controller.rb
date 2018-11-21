class CustomerSatisfactionsController < ApplicationController
  before_action :set_customer_satisfaction, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :charts]

  def index
    @customer_satisfactions = CustomerSatisfaction.all
    # @customer_satisfaction_collect = CustomerSatisfaction.all.collect{ |c| [c.user_group, c.rating]}
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "relatorio"   # Excluding ".pdf" extension.
      end
    end
  end


  def show
  end

  def new
    @customer_satisfaction = CustomerSatisfaction.new
  end

  def edit
  end

  
  def create
    @customer_satisfaction = CustomerSatisfaction.new(customer_satisfaction_params)
    if @customer_satisfaction.save
      redirect_to @customer_satisfaction, notice: 'Pesquisa de Satisfação criada com sucesso.'
    else
      render :new 
    end
  
  end

  
  def update
    if @customer_satisfaction.update(customer_satisfaction_params)
      redirect_to @customer_satisfaction, notice: 'Pesquisa de Satisfação atualizada com sucesso.'
    else
      render :edit
    end
    
  end

  
  def destroy
    @customer_satisfaction.destroy
  
    redirect_to customer_satisfactions_url, notice: 'Pesquisa de Satisfação excluida com sucesso.'
  
  end

  def charts
    @line_chart = CustomerSatisfaction.group(:meal).count
    @pie_chart = CustomerSatisfaction.group(:rating).count
    @column_chart = CustomerSatisfaction.group(:user_group).count


    @customer_by_rating_1 = CustomerSatisfaction.where(user_group: 1).group(:rating).count
    @customer_by_rating_2 = CustomerSatisfaction.where(user_group: 2).group(:rating).count
    @customer_by_rating_3 = CustomerSatisfaction.where(user_group: 3).group(:rating).count
  end

  private
    def set_customer_satisfaction
      @customer_satisfaction = CustomerSatisfaction.find(params[:id])
    end

    def customer_satisfaction_params
      params.require(:customer_satisfaction).permit(:user_group, :meal, :rating, :like, :disgust, :suggestion)
    end
end
