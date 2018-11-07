# This is the steps file referred to sign_in feature
# Place your code relative to that feature here


Dado("que eu estou deslogado e quero logar") do
  if user_signed_in
    visit(root_path)
    click_link('Sair')
  end
  expect(user_signed_in).to eq(false)
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

  expect(user_signed_in).to eq(true)
end

Dado("que eu estou na página inicial do aplicativo") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("eu quero ser redirecionado para a tela de backoffice") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("quero ser redirecionado para a tela inicial do aplicativo") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("quero estar deslogado") do
  pending # Write code here that turns the phrase above into concrete actions
end
