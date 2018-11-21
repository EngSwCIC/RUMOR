require 'rails_helper'

RSpec.describe Rating, type: :model do
  fixtures :rating

  it 'Create a Rating' do
    rating = rating(:manha_nota_baixa)

    expect(rating.meal).to eq('Café da Manhã')
  end

  it 'get_rating meal_cafe_da_manha' do
    rating_get = Rating.get_rating('Café da Manhã')
    expect(rating_get.meal).to eq('Café da Manhã')
  end
  
  it 'get_rating meal_almoço' do
    rating_get = Rating.get_rating('Almoço')
    expect(rating_get.meal).to eq('Almoço')
  end

  it 'get_rating meal_jantar' do
    rating_get = Rating.get_rating('Jantar')
    expect(rating_get.meal).to eq('Jantar')
  end

  it 'rating_notification cafe_da_manha_sem_nota' do
    rating = rating(:manha_sem_nota)
    expect(rating.rating_notification()).to eq('Nenhuma avaliação foi feita ainda :(')
  end

  it 'rating_notification cafe_da_manha_nota_muito_baixa' do
    rating = rating(:manha_nota_muito_baixa)
    expect(rating.rating_notification()).to eq('Se eu fosse você comia no postinho')
  end

  it 'rating_notification cafe_da_manha_nota_baixa' do
    rating = rating(:manha_nota_baixa)
    expect(rating.rating_notification()).to eq('Não recomento mas se quiser arriscar...')
  end

  it 'rating_notification cafe_da_manha_nota_media' do
    rating = rating(:manha_nota_media)
    expect(rating.rating_notification()).to eq('Vale o investimento :)')
  end

  it 'rating_notification cafe_da_manha_nota_media_alta' do
    rating = rating(:manha_nota_media_alta)
    expect(rating.rating_notification()).to eq('Vai sem medo de ser feliz!!')
  end

  it 'rating_notification cafe_da_manha_nota_alta' do
    rating = rating(:manha_nota_alta)
    expect(rating.rating_notification()).to eq('Quem é outback comparado a esse RU hoje?!')
  end

  it 'rating_notification almoço_sem_nota' do
    rating = rating(:tarde_sem_nota)
    expect(rating.rating_notification()).to eq('Nenhuma avaliação foi feita ainda :(')
  end

  it 'rating_notification almoço_nota_muito_baixa' do
    rating = rating(:tarde_nota_muito_baixa)
    expect(rating.rating_notification()).to eq('Se eu fosse você comia no postinho')
  end

  it 'rating_notification almoço_nota_baixa' do
    rating = rating(:tarde_nota_baixa)
    expect(rating.rating_notification()).to eq('Não recomento mas se quiser arriscar...')
  end

  it 'rating_notification almoço_nota_media' do
    rating = rating(:tarde_nota_media)
    expect(rating.rating_notification()).to eq('Vale o investimento :)')
  end

  it 'rating_notification almoço_nota_media_alta' do
    rating = rating(:tarde_nota_media_alta)
    expect(rating.rating_notification()).to eq('Vai sem medo de ser feliz!!')
  end

  it 'rating_notification almoço_nota_alta' do
    rating = rating(:tarde_nota_alta)
    expect(rating.rating_notification()).to eq('Quem é outback comparado a esse RU hoje?!')
  end

  it 'rating_notification jantar_sem_nota' do
    rating = rating(:noite_sem_nota)
    expect(rating.rating_notification()).to eq('Nenhuma avaliação foi feita ainda :(')
  end

  it 'rating_notification jantar_nota_muito_baixa' do
    rating = rating(:noite_nota_muito_baixa)
    expect(rating.rating_notification()).to eq('Se eu fosse você comia no postinho')
  end

  it 'rating_notification jantar_nota_baixa' do
    rating = rating(:noite_nota_baixa)
    expect(rating.rating_notification()).to eq('Não recomento mas se quiser arriscar...')
  end

  it 'rating_notification jantar_nota_media' do
    rating = rating(:noite_nota_media)
    expect(rating.rating_notification()).to eq('Vale o investimento :)')
  end

  it 'rating_notification jantar_nota_media_alta' do
    rating = rating(:noite_nota_media_alta)
    expect(rating.rating_notification()).to eq('Vai sem medo de ser feliz!!')
  end

  it 'rating_notification jantar_nota_alta' do
    rating = rating(:noite_nota_alta)
    expect(rating.rating_notification()).to eq('Quem é outback comparado a esse RU hoje?!')
  end

end
