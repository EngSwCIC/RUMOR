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
    @menus = Menu.all
  end

  def edit
  end

  def create
    @dinner = Dinner.new(dinner_params)
      if @dinner.save
        @menu = Menu.find(@dinner.menu_id)
        redirect_to @menu, notice: 'Jantar criado com sucesso'
      else
        render :new, locals: { :menu_id => :menu_id }
      end
  end

  def update
      if @dinner.update(dinner_params)
        @menu = Menu.find(@dinner.menu_id)
        redirect_to @menu, notice: 'Jantar atualizado com sucesso'
      else
        render :edit, locals: { :menu_id => :menu_id }
      end
  end

  def destroy
    begin
      @dinner.destroy
      flash[:notice] = 'Jantar excluido com sucesso'
      redirect_to dinners_url
    end
  end

  private
    def set_dinner
      @dinner = Dinner.find(params[:id])
    end

    def dinner_params
      params.require(:dinner).permit(:menu_id, :salad, :sauce, :soup, :main_course, :vegetarian_dish, :accompaniments, :dessert, :juice)
    end
end
