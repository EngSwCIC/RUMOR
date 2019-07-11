Quando("eu estiver logado") do
    email = 'user@user.com'
    password = 'user123'
    User.new(:email => email, :password => password, :password_confirmation => password).save!
    visit new_user_session_path
    fill_in :Email,with: "user@user.com"
    fill_in :Password,with: "user123"
    click_button "Log in"
    visit horario_de_funcionamentos_path
end
  
Quando("clicar em new") do
    visit new_customer_satisfaction_path
end
  
Então("devo ir para a página de criação de pesquisa") do
    page.find('h1', text:"New Customer Satisfaction")
end

Então("ao preencher os campos") do
    fill_in :Group, with: 2
    fill_in :Meal, with: "Janta"
    fill_in :Rating, with: 5
    fill_in :Like, with: "sim"
    fill_in :Disgust,with: "sim"
    fill_in :Suggestion,with: "sim"
end
  
Quando("clicar em criar uma nova pesquisa deve ser criada") do
    click_button "Create Customer satisfaction"
end
