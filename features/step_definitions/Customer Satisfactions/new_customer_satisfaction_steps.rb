Dado("que eu acesse a pagina inicial e logado como administrador") do
    visit 'http://localhost:3000/'
  end
  
  Dado("clique em {string}") do |string|
  end
  
  Quando("faço login com {string} e {string}") do |email, senha|
    @email = email
    find ('#user_email').set email
    find ('#user_password').set senha
    click_button 'Login'
  end
  
  Então("devo ser autenticado com sucesso") do
    expect(page).to have_content @email
  end
  
  Então("devo ler a menssagem {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("eu clicar em {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("devo ver todas as avaliações") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("devo ir para a página de avaliação") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("ao preencher os campos") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("clicar em {string} uma nova avaliação deve ser criada") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("devo ler a menssagem {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
