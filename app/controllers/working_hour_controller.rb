# frozen_string_literal: true

class WorkingHourController < ApplicationController
    # GET /working_hour
    # GET /working_hour.json
    def index
        @working_hour = Ru.search_working_hour(params[:name])
    end
      
  end
  