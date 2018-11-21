class Rating < ApplicationRecord

    def rating_notification
        if self.rating === -1
            return 'Nenhuma avaliação foi feita ainda :('
        elsif self.rating < 1
            return 'Se eu fosse você comia no postinho'
        elsif self.rating < 2.5
            return 'Não recomento mas se quiser arriscar...'
        elsif self.rating < 4
            return 'Vale o investimento :)'
        elsif self.rating < 4.5
            return 'Vai sem medo de ser feliz!!'
        else
            return 'Quem é outback comparado a esse RU hoje?!'            
        end
    end

    def self.get_rating(meal)
        @param = meal
        list = Rating.all.where('meal LIKE ?', "%#{@param}%")
        offset = rand(list.count)
        list.offset(offset).first
    end
end
