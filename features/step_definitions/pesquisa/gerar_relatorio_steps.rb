Dado("que eu esteja logado com gestor") do
    email = 'user@user.com'
    password = 'user123'
    User.new(:email => email, :password => password, :password_confirmation => password).save!
    visit new_user_session_path
    fill_in :Email,with: "user@user.com"
    fill_in :Password,with: "user123"
    click_button "Log in"
end

Quando("eu for para a página de criação de pesquisa") do
    visit customer_satisfactions_path
end

Dado("que eu tenha dados no banco") do
    @customer_satisfactions = CustomerSatisfaction.create(user_group: 1, meal: "Almoco", rating: 5, like: "Almoco", disgust: "Almoco" , suggestion: "Almoco")
end

Então("ao clicar no link gerar pdf uma nova página se abrira") do
    path = customer_satisfactions_path
    link = "a[href=\'#{path}\']"
end


