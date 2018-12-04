class WelcomeController < ApplicationController
  def index
    render :layout => false
    @cardapio = Cardapios.search_cardapio(params[:campus])
  end

  def show; end

  def new
    @cardapio = Cardapios.new
  end

  def edit; end

  def create
    @cardapio = Cardapios.new(cardapio_params)

    respond_to do |format|
      if @cardapio.save
        format.html { redirect_to @cardapio, notice: 'Cardapio was successfully created.' }
        format.json { render :show, status: :created, campus: @cardapio }
      else
        format.html { render :new }
        format.json { render json: @cardapio.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @cardapio.destroy
    respond_to do |format|
      format.html { redirect_to index_url, notice: 'Cardapio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_cardapio
    @cardapio = Cardapios.find(params[:id])
  end

  def cardapio_params
    params.require(:cardapios).permit(:data, :campus)
  end
end

