#Essa model contem o metodo para buscar um cardapio com os parametros data e campus
class Cardapio < ApplicationRecord
    def self.search_cardapio(data,campus)
        #Retorna caso algum dos parametros seja nulo ou estiver vazio
        return if data.nil? || data.empty?
        return if campus.nil? || campus.empty?

        @parameter_data = data
        @parameter_campus  = campus
        Cardapio.where('data LIKE ? AND campus LIKE ?', "%#{@parameter_data}%", "%#{@parameter_campus}%").first
    end
end