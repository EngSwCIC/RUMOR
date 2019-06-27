# This is the steps file referred to index_users feature
# Place your code relative to that feature here

Entao("eu quero ver os usuarios {string}, {string}") do |name, email|
  expect(page).to have_content name
  expect(page).to have_content email
end

Dado("que exista um usuario com os campos {string}, {string}") do |nome, email|
  User.create!(name: nome, email: email, password: 123456)
end
