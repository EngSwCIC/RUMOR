Quando("o adm estiver logado") do
    email = 'user@user.com'
    password = 'user123'
    User.new(:email => email, :password => password, :password_confirmation => password).save!
    visit new_user_session_path
    fill_in :Email,with: "user@user.com"
    fill_in :Password,with: "user123"
    click_button "Log in" 
end
  
Quando("ir para a página de horários") do
    visit hora_de_funcionamentos_path 
end
  
Quando("clicar para criar uma novo horário") do 
    visit new_hora_de_funcionamento_path
end
  
Quando("eu não preencher nenhum campo") do
    fill_in :Dia, with: ""
    fill_in :Inicio, with: ""
    fill_in :Fechamento, with: ""
end

Quando("clicar em criar") do
    click_button "Create Hora de funcionamento"
end

Então("não deve ser possível criar um horário") do
    page.find('h2', text:"prohibited")
end
