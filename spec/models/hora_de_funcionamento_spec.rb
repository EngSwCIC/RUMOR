require 'rails_helper'

RSpec.describe HoraDeFuncionamento, type: :model do
  it "is valid with valid attributes" do
expect(HoraDeFuncionamento.new(dia: "21/06", inicio: "8:00",fechamento: "21:00")).to be_valid
end

it "is not valid without attributes" do
    expect(HoraDeFuncionamento.new).to_not be_valid
  end

it "is not valid without dia" do
expect(HoraDeFuncionamento.new(inicio: "8:00",fechamento: "21:00")).to_not be_valid
end

it "is not valid without inicio" do
expect(HoraDeFuncionamento.new(dia: "21/06",fechamento: "21:00")).to_not be_valid
end

it "is not valid without fechamento" do
expect(HoraDeFuncionamento.new(dia: "21/06",inicio: "8:00")).to_not be_valid
end
  
end
