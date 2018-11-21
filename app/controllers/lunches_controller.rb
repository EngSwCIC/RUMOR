class LunchesController < ApplicationController
  before_action :set_lunch, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @lunches = Lunch.all
  end

  def show
  end

  def new
    @lunch = Lunch.new
    @menus = Menu.all
  end

  def edit
  end

  def create
    @lunch = Lunch.new(lunch_params)
      if @lunch.save
        @menu = Menu.find(@lunch.menu_id)
        redirect_to @menu, notice: 'Almoço criado com sucesso'
      else
        render :new, locals: { :menu_id => :menu_id }
      end
  end

  def update
      if @lunch.update(lunch_params)
        @menu = Menu.find(@lunch.menu_id)
        redirect_to @menu, notice: 'Almoço atualizado com sucesso'
      else
        render :edit, locals: { :menu_id => :menu_id }
      end
  end

  def destroy
    begin
      @lunch.destroy
      flash[:notice] = 'Almoço excluido com sucesso'
      redirect_to lunches_url
    end
  end

  private
    def set_lunch
      @lunch = Lunch.find(params[:id])
    end

    def lunch_params
      params.require(:lunch).permit(:menu_id, :salad, :sauce, :main_course, :garnish, :vegetarian_dish, :accompaniments, :dessert, :juice)
    end
end
