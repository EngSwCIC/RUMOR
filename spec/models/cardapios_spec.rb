require 'rails_helper'

RSpec.describe Cardapio, type: :model do
  fixtures :cardapios

  it "Checando o registro - Cardápio Darcy Ribeiro 24/03/2018" do
    expect(cardapios(:darcy_ribeiro_24_03_2018)).to be_valid
    end

  it "Checando a data - Cardápio Darcy Ribeiro 24/03/2018" do
    expect(cardapios(:darcy_ribeiro_24_03_2018).data).to eq('2018-03-24')
  end

  it "Checando a campus - Cardápio Darcy Ribeiro 24/03/2018" do
    expect(cardapios(:darcy_ribeiro_24_03_2018).campus).to eq('Darcy Ribeiro')
  end

  it "Checando o registro - Cardápio FCE 04/02/2018" do
    expect(cardapios(:FCE_04_02_2018)).to be_valid
    end

  it "Checando a data - Cardápio FCE 04/02/2018" do
    expect(cardapios(:FCE_04_02_2018).data).to eq('2018-02-04')
  end

  it "Checando a campus - Cardápio FCE 04/02/2018" do
    expect(cardapios(:FCE_04_02_2018).campus).to eq('FCE')
  end

end
