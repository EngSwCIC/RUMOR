class HoraDeFuncionamentosController < ApplicationController
  before_action :set_hora_de_funcionamento, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, only: [:index]

  # GET /hora_de_funcionamentos
  # GET /hora_de_funcionamentos.json
  def index
    @hora_de_funcionamentos = HoraDeFuncionamento.all
  end

  # GET /hora_de_funcionamentos/1
  # GET /hora_de_funcionamentos/1.json
  def show
  end

  # GET /hora_de_funcionamentos/new
  def new
    @hora_de_funcionamento = HoraDeFuncionamento.new
  end

  # GET /hora_de_funcionamentos/1/edit
  def edit
  end

  # POST /hora_de_funcionamentos
  # POST /hora_de_funcionamentos.json
  def create
    @hora_de_funcionamento = HoraDeFuncionamento.new(hora_de_funcionamento_params)

    respond_to do |format|
      if @hora_de_funcionamento.save
        format.html { redirect_to @hora_de_funcionamento, notice: 'Hora de funcionamento was successfully created.' }
        format.json { render :show, status: :created, location: @hora_de_funcionamento }
      else
        format.html { render :new }
        format.json { render json: @hora_de_funcionamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hora_de_funcionamentos/1
  # PATCH/PUT /hora_de_funcionamentos/1.json
  def update
    respond_to do |format|
      if @hora_de_funcionamento.update(hora_de_funcionamento_params)
        format.html { redirect_to @hora_de_funcionamento, notice: 'Hora de funcionamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @hora_de_funcionamento }
      else
        format.html { render :edit }
        format.json { render json: @hora_de_funcionamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hora_de_funcionamentos/1
  # DELETE /hora_de_funcionamentos/1.json
  def destroy
    @hora_de_funcionamento.destroy
    respond_to do |format|
      format.html { redirect_to hora_de_funcionamentos_url, notice: 'Hora de funcionamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hora_de_funcionamento
      @hora_de_funcionamento = HoraDeFuncionamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hora_de_funcionamento_params
      params.require(:hora_de_funcionamento).permit(:dia, :inicio, :fechamento)
    end
end
