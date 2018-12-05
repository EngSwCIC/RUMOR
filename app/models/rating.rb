class Rating < ApplicationRecord

    # Retorna uma mensagem de acordo com a nota do cardápio
    def rating_notification
        @rating = self.rating
        if @rating === -1
            return 'Nenhuma avaliação foi feita ainda :('
        elsif @rating < 1
            return 'Se eu fosse você comia na lanchonete'
        elsif @rating < 2.5
            return 'Não recomento mas se quiser arriscar...'
        elsif @rating < 4
            return 'Vale o investimento :)'
        elsif @rating < 4.5
            return 'Vai sem medo de ser feliz!!'
        else
            return 'Quem é outback comparado a esse RU hoje?!'
        end
    end

    # Retorna a nota do cardápio de acordo com o nome do campus e refeição
    def self.get_rating(meal,campus)
        return if campus.nil? || campus.empty?

        @param_meal = meal
        @param_campus = campus
        list = Rating.where('meal LIKE ? AND campus_name LIKE ?',"%#{@param_meal}%","%#{@param_campus}%")
        offset = rand(list.count)
        list.offset(offset).first
    end
end
