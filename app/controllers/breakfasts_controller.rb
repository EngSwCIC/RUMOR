class BreakfastsController < ApplicationController
  before_action :set_breakfast, only: [:show, :edit, :update, :destroy]

  def index
    @breakfasts = Breakfast.all
  end

  def show
  end

  def new
    @breakfast = Breakfast.new
  end

  def edit
  end

  def create
    @breakfast = Breakfast.new(breakfast_params)
      if @breakfast.save
        redirect_to @breakfast, notice: 'Breakfast was successfully created.'
      else
        render :new
      end
  end

  def update
      if @breakfast.update(breakfast_params)
        redirect_to @breakfast, notice: 'Breakfast was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    begin
      @breakfast.destroy
      flash[:notice] = 'Desjejum excluido com sucesso'
      redirect_to breakfasts_url
    rescue StandardError => e
      flash[:alert] = 'Erro ao excluir Desjejum!!'
      redirect_to breakfasts_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breakfast
      @breakfast = Breakfast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def breakfast_params
      params.require(:breakfast).permit(:menu_id, :hot_drinks, :vegetarian_drink, :chocolate_milk, :bread, :vegetarian_bread, :margarine, :vegetarian_margarine, :complement, :vegetarian_complement)
    end
end
