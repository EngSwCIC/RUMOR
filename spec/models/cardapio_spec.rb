require 'rails_helper'

RSpec.describe Cardapio, type: :model do
  fixtures :cardapios

  it "Preencheu corretamente a data e o campus" do
    expect(cardapios(:darcy_ribeiro_24_03_2018)).to be_valid
    end
end
