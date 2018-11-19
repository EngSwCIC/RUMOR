# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ru, type: :model do

  fixtures :ru

  it 'Create a Ru' do
    ru = ru(:darcy)

    expect(ru.name).to eq('Darcy Ribeiro')
  end
  
  it 'search_working_hour find_eq' do
    ru = ru(:gama)
    ru_working_hour = Ru.search_working_hour('RU/FGA')
    expect(ru_working_hour.working_hour).to eq("De segunda-feira a sexta-feira** Café da manhã: 7h às 9h Almoço: 10h30 às 14h30* Jantar: 17h às 19h30\n*sáb, dom e feriados : 11h ás 14h30 **Exceto feriados")
  end

  it 'search_working_hour find_case_insensitve' do
    ru = ru(:ceilandia)
    ru_working_hour = Ru.search_working_hour('rU/fcE')
    expect(ru_working_hour.working_hour).to eq("De segunda-feira a sexta-feira** Café da manhã: 7h às 9h Almoço: 11h às 14h30* Jantar: 17h às 19h30 Sábado** Café da manhã: 7h às 9h Almoço: 11h às 14h30\n*sáb, dom e feriados : 11h ás 14h30 **Exceto feriados")
  end

  it 'search_working_hour find_partial' do
    ru = ru(:planaltina)
    ru_working_hour = Ru.search_working_hour('fup')
    expect(ru_working_hour.working_hour).to eq("Diariamente Café da manhã: 7h às 9h Almoço: 10h30 às 14h30 Jantar: 17h às 19h30")
  end
end
