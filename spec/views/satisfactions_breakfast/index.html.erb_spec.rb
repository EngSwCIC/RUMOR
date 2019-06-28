require 'rails_helper'

RSpec.feature "satisfactions_breakfast", type: :view do

    scenario 'Cadastra uma nova pesquisa'do 
        visit(new_customer_satisfaction_path)
        fill_in('user_group',with:'1')
        fill_in('meal',with:'Almoco')
        fill_in('rating',with:'3')
        fill_in('like',with:'Muito bom!!!')
        fill_in('disgust',with:'Yeah !!!')
        fill_in('suggestion',with:'Topzera :)')
        click_on('Create Customer satisfaction')
        expect(page).to have_content('Pesquisa de Satisfação criada com sucesso.')
    end 
end
