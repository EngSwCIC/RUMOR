require 'rails_helper'

RSpec.describe HoraDeFuncionamento, type: :model do
  it "is valid with valid attributes" do
expect(HoraDeFuncionamento.new(dia: "21/06", inicio: "8:00",fechamento: "21:00")).to be_valid
end

it "is valid with pattern attributes" do
    expect(HoraDeFuncionamento.new).to be_valid
  end

it "is valid with pattern dia" do
expect(HoraDeFuncionamento.new(inicio: "8:00",fechamento: "21:00")).to be_valid
end

it "is valid with pattern inicio" do
expect(HoraDeFuncionamento.new(dia: "21/06",fechamento: "21:00")).to be_valid
end

it "is valid with pattern fechamento" do
expect(HoraDeFuncionamento.new(dia: "21/06",inicio: "8:00")).to be_valid
end
  
end
