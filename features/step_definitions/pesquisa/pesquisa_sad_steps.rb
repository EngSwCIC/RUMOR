Quando("o gestor estiver logado") do
    email = 'user@user.com'
    password = 'user123'
    User.new(:email => email, :password => password, :password_confirmation => password).save!
    visit new_user_session_path
    fill_in :Email,with: "user@user.com"
    fill_in :Password,with: "user123"
    click_button "Log in" 
end
  
Quando("ir para a página de pesquisa") do
    visit customer_satisfactions_path 
end
  
Quando("clicar para criar uma nova pesquisa") do 
    visit new_customer_satisfaction_path
end
  
Quando("eu não preencher nenhum campo no form") do
    fill_in :Group, with: ""
    fill_in :Meal, with: ""
    fill_in :Rating, with: ""
    fill_in :Like, with: ""
    fill_in :Disgust,with: ""
    fill_in :Suggestion,with: "" 
end

Quando("clicar no criar") do
    click_button "Create Customer satisfaction"
end

Então("não deve ser possível criar uma mensagem") do
    page.find('h2', text:"prohibited")
end