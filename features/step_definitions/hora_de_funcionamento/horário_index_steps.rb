# This is the steps file referred to materia feature
# Place your code relative to that feature here

#index steps
Dado("que eu tenha uma lista de horários") do 
 @hora_de_funcionamentos = HoraDeFuncionamento.create(dia: "2000-04-19", inicio: "08:00", fechamento: "22:00")
end

Dado("que eu esteja na página index de horários") do
  email = 'user@user.com'
  password = 'user123'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  visit new_user_session_path
  fill_in :Email,with: "user@user.com"
  fill_in :Password,with: "user123"
  click_button "Log in"
  visit hora_de_funcionamentos_path
end

Então("eu devo ver a lista completa com os horários") do 
  expect(page).to have_content "2000-04-19"
  expect(page).to have_content "8:00:00"
  expect(page).to have_content "22:00:00"
end


