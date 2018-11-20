class DinnersController < ApplicationController
  before_action :set_dinner, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @dinners = Dinner.all
  end

  def show
  end

  def new
    @dinner = Dinner.new
    @menu =[]
    @menu << Menu.find_by(id: params[:menu_id])
  end

  def edit
  end

  def create
    @dinner = Dinner.new(dinner_params)
      if @dinner.save
        redirect_to @dinner, notice: 'Dinner was successfully created.'
      else
        render :new, locals: { :menu_id => :menu_id }
      end
  end

  def update
      if @dinner.update(dinner_params)
        redirect_to @dinner, notice: 'Dinner was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    begin
      @dinner.destroy
      flash[:notice] = 'Jantar excluido com sucesso'
      redirect_to dinners_url
    rescue StandardError => e
      flash[:alert] = 'Erro ao excluir Jantar!!'
      redirect_to dinners_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dinner
      @dinner = Dinner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dinner_params
      params.require(:dinner).permit(:menu_id, :salad, :sauce, :soup, :main_course, :vegetarian_dish, :accompaniments, :dessert, :juice)
    end
end
