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
        redirect_to menus_path
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

      for planilha in 0..spreadsheet.sheets.size-1 do

        first_row = spreadsheet.sheet(planilha).first_row
        
        break if first_row.nil?
        # We use this part to easy correct index for each row
        datas           = first_row + 2
        desjejum_inicio = first_row + 4
        desjejum_fim    = first_row + 13
        almoco_inicio   = first_row + 15
        almoco_fim      = first_row + 22
        jantar_inicio   = first_row + 24
        jantar_fim      = first_row + 33
        
        # DATAS E DIAS
        datas = spreadsheet.sheet(planilha).row(datas).compact
        dias = datas.size
        
        opcoes = Array.new
        cardapios = Array.new
  
        desjejum = Hash.new
        desjejuns = Array.new
  
        almoco = Hash.new
        almocos = Array.new
  
        jantar = Hash.new
        jantares = Array.new
        
        # DESJEJUM 
        for i in desjejum_inicio..desjejum_fim do
          opcoes << spreadsheet.sheet(planilha).row(i).drop(1)
        end
  
        opcoes_descricao = ["hot_drinks", "vegetarian_drink", "chocolate_milk", "bread", 
                           "vegetarian_bread", "margarine", "vegetarian_margarine",
                           "complement", "vegetarian_complement", "fruit"]
  
        opcoes_descricao.each do |op_d|
          desjejum[op_d] = opcoes.first
          opcoes.shift
        end
  
        # ALMOÇO
        for i in almoco_inicio..almoco_fim do
          opcoes << spreadsheet.sheet(planilha).row(i).drop(1)
        end
  
        opcoes_descricao = ["salad","sauce","main_course","garnish",
                            "vegetarian_dish","accompaniments","dessert",
                            "juice"]
                           
  
        opcoes_descricao.each do |op_d|
          almoco[op_d] = opcoes.first
          opcoes.shift
        end
        
        # JANTAR
        for i in jantar_inicio..jantar_fim do
          opcoes << spreadsheet.sheet(planilha).row(i).drop(1)
        end
  
        opcoes_descricao = ["salad", "sauce", "soup", "main_course", 
                            "vegetarian_dish", "accompaniments", "dessert",
                            "juice"]
  
        opcoes_descricao.each do |op_d|
          jantar[op_d] = opcoes.first
          opcoes.shift
        end
        
        # DIAS 
        dias.times do |i|
  
          # Cria novo cardapio
          date = (datas[i].last(5).gsub('.', '/') + "/2018").to_date
          cardapios[i] = Menu.where(date: date).first_or_initialize
          cardapios[i].save
  
          # Cria desjejum e atribui ao cardapio
          desjejuns[i] = Breakfast.new
          desjejuns[i].menu_id  = cardapios[i].id                                                    
          desjejuns[i].save
  
          # Passa da lista de atributos para atributos dos objetos
          desjejum.each_key do |key|
            desjejuns[i].update_attribute(key.to_sym, desjejum[key][i])
          end
  
          # Cria almoco e atribui ao cardapio
          almocos[i] = Lunch.new
          almocos[i].menu_id = cardapios[i].id
          almocos[i].save
  
          # Passa da lista de atributos para atributos dos objetos
          almoco.each_key do |key|
            almocos[i].update_attribute(key.to_sym, almoco[key][i])
          end
  
          # Cria jantar e atribui ao cardapio
          jantares[i] = Dinner.new
          jantares[i].menu_id = cardapios[i].id
          jantares[i].save
  
          # Passa da lista de atributos para atributos dos objetos
          jantar.each_key do |key|
            jantares[i].update_attribute(key.to_sym, jantar[key][i])
          end
  
          # Checa se o cardápio não foi preenchido
          unless cardapios[i].breakfast.hot_drinks.present?
            cardapios[i].destroy
          end
  
        end
  
      end
  
    end

end
