# frozen_string_literal: true

class ViewRatingController < ApplicationController
    before_action :set_rating, only: %i[show edit update destroy]
    before_action :init
    @@meal
  
    # GET /view_controller
    # GET /view_controller.json
    def index
        get_info()
    end

    def get_info
        @rating = Rating.get_rating(@meal)
        @notification = @rating.rating_notification
    end

    def init
        if Time.now.strftime('%H:%M:%S') < '10:30:00'.to_time.strftime( "%H:%M:%S" )
            @meal = 'Café da Manhã'
        elsif Time.now.strftime('%H:%M:%S') < '17:00:00'.to_time.strftime( "%H:%M:%S" )
            @meal = 'Almoço'
        else
            @meal = 'Jantar'
        end
    end
  
    # GET /view_controller/1
    # GET /view_controller/1.json
    def show; end
  
    # GET /view_controller/new
    def new
      @rating = Rating.new
    end
  
    # GET /view_controller/1/edit
    def edit; end
  
    # POST /view_controller
    # POST /view_controller.json
    def create
      @rating = Rating.new(rating_params)
  
      respond_to do |format|
        if @rating.save
          format.html { redirect_to @rating, notice: 'Rating was successfully created.' }
          format.json { render :show, status: :created, location: @rating }
        else
          format.html { render :new }
          format.json { render json: @rating.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /view_controller/1
    # PATCH/PUT /view_controller/1.json
    def update
      respond_to do |format|
        if @rating.update(rating_params)
          format.html { redirect_to @rating, notice: 'Rating was successfully updated.' }
          format.json { render :show, status: :ok, location: @rating }
        else
          format.html { render :edit }
          format.json { render json: @rating.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /view_controller/1
    # DELETE /view_controller/1.json
    def destroy
      @rating.destroy
      respond_to do |format|
        format.html { redirect_to view_controller_url, notice: 'Rating was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_rating
      @rating = Rating.find(params[:id])
    end
  
    # Never tview_controllert parameters from the scary internet, only allow the white list through.
    def rating_params
      params.require(:rating).permit(:meal, :rating)
    end
  end
  