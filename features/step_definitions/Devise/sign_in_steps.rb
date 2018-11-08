# This is the steps file referred to sign_in feature
# Place your code relative to that feature here


Dado("que eu estou deslogado e quero logar") do
  if user_signed_in
    visit(root_path)
    click_link('Sair')
  end
end

Dado("na página inicial do aplicativo") do
  visit(root_path)
end

Quando("eu clicar em {string}") do |string|
  click_link(string)
end

Então("eu quero ser redirecionado para a tela de login") do
  expect(current_path).to eq(new_user_session_path)
end

Dado("que eu estou logado") do
  user = User.find_by(email: 'test_user@email.com')

  if  user == nil
    user = User.new
  end

  user.email = 'test_user@email.com'
  user.password = '123456'
  user.save

  if user_signed_in
    visit(root_path)
    click_link('Sair')
  end

  visit(new_user_session_path)

  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password

  click_link_or_button('Log in')
end

Dado("que eu estou na página inicial do aplicativo") do
  visit(root_path)
end

Então("eu quero ser redirecionado para a tela de backoffice") do
  expect(current_path).to eq(dashboard_home_path)
end

Então("quero ser redirecionado para a tela inicial do aplicativo") do
  expect(current_path).to eq(root_path)
end

Então("quero estar deslogado") do
  expect(user_signed_in).to eq(false)
end
