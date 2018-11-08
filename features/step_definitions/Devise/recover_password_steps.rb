# This is the steps file referred to recover_password feature
# Place your code relative to that feature here

Dado("que eu estou deslogado e quero recuperar minha senha") do
  if user_signed_in
    visit(root_path)
    click_link('Sair')
  end
end

Dado("que eu estou na tela de login") do
  visit(root_path)
end

Quando("eu clicar em {string}") do |string|
  click_link(string)
end

Então("eu quero ser redirecionado para a página de recuperação de senhas") do
  expect(current_path).to eq(new_user_password_path)
end
