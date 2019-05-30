# This is the steps file referred to create_users feature
# Place your code relative to that feature here

Dado("eu estaja na pagina de ver usuarios") do
  visit users_path
end

Dado("preencher o formulario com:") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.rows_hash.each do |field,value|
    fill_in field, with: value
  end
end

Dado("clicar no botão {string}") do |botao|
  click_on botao
end

Então("eu devo ser redirecionado para página de usuarios") do
  # visit users_path
  expect(current_path).to eq(users_path)
end

Então("devo ver a mensagem {string}") do |success_message|
  expect(page).to have_content success_message
  # expect(page).to have_content User.last.name.downcase
end
