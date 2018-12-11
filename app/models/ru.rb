# frozen_string_literal: true

class Ru < ApplicationRecord

    # Retorna o horário de funcionamento de acordo com o nome do campus
    def self.search_working_hour(search)
      return if search.nil? || search.empty?
  
      @parameter = search
      Ru.where('name ILIKE ?', "%#{@parameter}%").first
    end
    
    def self.search_nota(search)
      return if search.nil? || search.empty?
  
      @parameter = search
      puts @parameter
      Ru.where('name ILIKE ?', "%#{@parameter}%").first
  end
  end