Quando("eu estiver logado") do
    email = 'user@user.com'
    password = 'user123'
    User.new(:email => email, :password => password, :password_confirmation => password).save!
    visit new_user_session_path
    fill_in :Email,with: "user@user.com"
    fill_in :Password,with: "user123"
    click_button "Log in"
    visit hora_de_funcionamentos_path
end
  
Quando("quando clicar em new") do
    visit new_hora_de_funcionamento_path
end
  
Então("devo ir para a página de criação de horário de funcionamento") do
    page.find('h1', text:"New Hora De Funcionamento")
end

Então("ao preencher os dados") do
    fill_in :Dia, with: "10/06"
    fill_in :Inicio, with: "7:00"
    fill_in :Fechamento, with: "19:00"
    
end
  
Quando("clicar em criar um novo horário de funcionamento deve ser criado") do
    click_button "Create Hora de funcionamento"
end
