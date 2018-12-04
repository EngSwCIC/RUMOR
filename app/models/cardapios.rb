class Cardapios < ApplicationRecord
    def self.search_cardapio(campus)

        return if campus.nil? || campus.empty?

        @parameter  = campus
        Cardapios.where('campus LIKE ?', "%#{@parameter}%")
    end
end
