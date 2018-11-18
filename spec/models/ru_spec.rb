# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Ru, type: :model do
  it 'Create a Ru' do
    ru = create(:ru,name:'Darcy Ribeiro')

    expect(ru.name).to eq('Darcy Ribeiro')
  end

  it {expect{create(:ru)}.to change{Ru.all.size}.by(1)}

  it 'search_working_hour find_eq' do
    ru = create(:ru,name:'RU/FGA',working_hour:'10h-12h')
    ru_working_hour = Ru.search_working_hour('RU/FGA')
    expect(ru_working_hour.working_hour).to eq('10h-12h')
  end

  it 'search_working_hour find_case_insensitve' do
    ru = create(:ru,name:'RU/FCE',working_hour:'11h-12h')
    ru_working_hour = Ru.search_working_hour('rU/fcE')
    expect(ru_working_hour.working_hour).to eq('11h-12h')
  end

  it 'search_working_hour find_partial' do
    ru = create(:ru,name:'RU/FUP',working_hour:'10h-11h')
    ru_working_hour = Ru.search_working_hour('fup')
    expect(ru_working_hour.working_hour).to eq('10h-11h')
  end
end
