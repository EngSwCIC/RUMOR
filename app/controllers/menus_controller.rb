class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :import]

  def index
    @menus = Menu.all
    @month_menu = this_month_menu(@menus).sort_by {|a| a.date }
  end

  def show
  end

  def new
    @menu = Menu.new
  end

  def edit
  end

  def create
    case route_to params
      when :create_sheet
        raise "xablau"
      else
        @menu = Menu.new(menu_params)
          if @menu.save
            redirect_to @menu, notice: 'Menu was successfully created.'
          else
            render :new
          end
      end
  end

  def import
    @menu_import = Menu.new
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
    end
  end

  private
    def set_menu
      @menu = Menu.find(params[:id])
    end

    def menu_params
      params.require(:menu).permit(:date)
    end

    def route_to params
      if params[:route_to]
        params[:route_to].keys.first.to_sym
      end
    end

end
