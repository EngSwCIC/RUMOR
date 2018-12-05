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

# Create method will be called if the user wishes to create a new menu or if he/she chooses
# to import an already existing valid sheet
  def create
    case route_to params
      when :create_sheet
        load_imported_menu(params[:menu][:file])
        raise params[:menu][:file].original_filename.inspect
        @menu_import = Menu.new(params[:menu])
        if @menus_import.save
          redirect_to menus_path
        else
          render :new
        end
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

    # Private method used to open an external .csv, .xls or .xlsx file 
    def open_spreadsheet(file)
      case File.extname(file.original_filename)
      when ".csv" then Csv.new(file.path, nil, :ignore)
      when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
      when ".xlsx" then Roo::Excelx.new(file.path)
      else raise "Unknown file type: #{file.original_filename}"
      end
    end

    # Privated method to load an file and organized it as menu meals
    def load_imported_menu(file)
      spreadsheet = open_spreadsheet(file)
      raise spreadsheet.row(5).inspect
    end

end
