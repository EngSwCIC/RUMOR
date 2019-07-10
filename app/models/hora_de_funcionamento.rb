class HoraDeFuncionamento < ApplicationRecord
validates :dia, presence: true
validates :inicio, presence: true
validates :fechamento, presence: true
end
