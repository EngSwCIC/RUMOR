Dado("que eu esteja logado") do
    email = 'user@user.com'
    password = 'user123'
    User.new(:email => email, :password => password, :password_confirmation => password).save!
    visit new_user_session_path
    fill_in :Email,with: "user@user.com"
    fill_in :Password,with: "user123"
    click_button "Log in"
end

Dado("que eu tenha dados na pesquisa") do
    @customer_satisfactions = CustomerSatisfaction.create(user_group: 1, meal: "Almoco", rating: 5, like: "Almoco", disgust: "Almoco" , suggestion: "Almoco")
end

Dado("ao visitar a página de gráficos") do
    visit charts_path
end


Então("Então eu devo ver a lista completa com os graficos") do
    page.find('h1', text:"Quantidade de respostas por refeição")
    page.find('h1', text:"Notas do usuários")
    page.find('h1', text:"Grupo de usuário")
    page.find('h1', text:"Nota por grupo de usuários 1")
    page.find('h1', text:"Nota por grupo de usuários 2")
    page.find('h1', text:"Nota por grupo de usuários 3")
end
  
  