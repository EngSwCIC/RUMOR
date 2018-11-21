class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @menus = Menu.all
    if params[:month]
      @month_menu = :month
    else
      @month_menu = this_month_menu(@menus).sort_by {|a| a.date }
    end
  end

  def show
  end

  def new
    @menu = Menu.new
  end

  def edit
  end

  def create
    @menu = Menu.new(menu_params)
      if @menu.save
        redirect_to @menu, notice: 'Menu was successfully created.'
      else
        render :new
      end
  end

  def update
      if @menu.update(menu_params)
        redirect_to @menu, notice: 'Menu was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    begin
      @menu.destroy
      flash[:notice] = 'Cardápio excluido com sucesso'
      redirect_to menus_url
    rescue StandardError => e
      flash[:alert] = 'Erro ao excluir Cardápio!!'
      redirect_to menus_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:date)
    end
end
