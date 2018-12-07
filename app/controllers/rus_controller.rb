# frozen_string_literal: true

class RusController < ApplicationController

  # GET /rus
  # GET /rus.json
  def index
    @working_hour = Ru.all
  end

end
