Dado("que eu estou deslogado") do
  visit(root_path)
  expect(page).not_to have_link('Sair')
end

Quando("eu clicar em {string}") do |string|
  click_link(string)
end

Dado("na página inicial do aplicativo") do
  visit(root_path)
end

Então("quero estar deslogado") do
  expect(page).not_to have_link('Sair')
end

Quando("eu preencher o formulário de login e efetuar o login") do
  User.create!(email: "user@user.com", password: "user123")
  visit(new_user_session_path)
  fill_in 'Email', with: "user@user.com"
  fill_in 'Password', with: "user123"
  click_button('Log in')
end

Então("quero estar logado") do
  expect(page).to have_link('Sair')
end

Dado("que eu estou logado") do
  User.create!(email: "user@user.com", password: "user123")
  visit(new_user_session_path)
  fill_in 'Email', with: "user@user.com"
  fill_in 'Password', with: "user123"
  click_button('Log in')
  expect(page).to have_link('Sair')
end
