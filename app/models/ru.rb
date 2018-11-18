# frozen_string_literal: true

class Ru < ApplicationRecord

    def self.search_working_hour(search)
        if(search == nil)
            return
        end
        @parameter = search
        Ru.where("name ILIKE ?", "%#{@parameter}%").first
    end
end
