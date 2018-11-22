# frozen_string_literal: true

class WorkingHourController < ApplicationController
    before_action :set_ru, only: %i[show edit update destroy]
  
  
    # GET /working_hour
    # GET /working_hour.json
    def index
        @working_hour = Ru.search_working_hour(params[:name])
    end
  
    # GET /working_hour/1
    # GET /working_hour/1.json
    def show; end
  
    # GET /working_hour/new
    def new
      @ru = Ru.new
    end
  
    # GET /working_hour/1/edit
    def edit; end
  
    # POST /working_hour
    # POST /working_hour.json
    def create
      @ru = Ru.new(ru_params)
  
      respond_to do |format|
        if @ru.save
          format.html { redirect_to @ru, notice: 'Ru was successfully created.' }
          format.json { render :show, status: :created, location: @ru }
        else
          format.html { render :new }
          format.json { render json: @ru.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /working_hour/1
    # PATCH/PUT /working_hour/1.json
    def update
      respond_to do |format|
        if @ru.update(ru_params)
          format.html { redirect_to @ru, notice: 'Ru was successfully updated.' }
          format.json { render :show, status: :ok, location: @ru }
        else
          format.html { render :edit }
          format.json { render json: @ru.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /working_hour/1
    # DELETE /working_hour/1.json
    def destroy
      @ru.destroy
      respond_to do |format|
        format.html { redirect_to working_hour_url, notice: 'Ru was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_ru
      @ru = Ru.find(params[:id])
    end
  
    # Never tworking_hourt parameters from the scary internet, only allow the white list through.
    def ru_params
      params.require(:ru).permit(:name, :working_hour, :location)
    end
  end
  