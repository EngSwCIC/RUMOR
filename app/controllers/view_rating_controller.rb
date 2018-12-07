# frozen_string_literal: true

class ViewRatingController < ApplicationController
    before_action :init
    @@meal
    @@campus_meals
    @@time
  
    # GET /view_controller
    # GET /view_controller.json
    def index
        get_info()
    end

    # @rating -> nota do cardápio atual
    # @notification -> mensagem que será exibida de acordo com a nota
    def get_info
        @rating = Rating.get_rating(@meal,params[:name])
        
        return if @rating.nil?

        @notification = @rating.rating_notification
    end

    # função que determina qual refeição deve ser exibida de acordo com o horário
    def init
        @time = Time.now.hour.to_i

        if @time < 11
            @meal = 'Café da Manhã'
        elsif @time < 17
            @meal = 'Almoço'
        else
            @meal = 'Jantar'
        end
    end  
    
end
  