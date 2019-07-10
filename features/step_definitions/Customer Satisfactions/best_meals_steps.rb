Dado("que estou na página de log in") do 
    visit "http://0.0.0.0:3000/dashboard/home"
end

Quando("eu faço o login com {string} e {string}") do |email, password|
    visit new_user_session_path
    fill_in :Email,with: "user@user.com"
    fill_in :Password,with: "user123"
    click_button "Log in"
end

Então("eu entro na página de satisfação com as avaliações ordenadas") do
  visit customer_satisfactions_path
end




