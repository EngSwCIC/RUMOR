# This is the steps file referred to edit_users feature
# Place your code relative to that feature here

Então("ver o usuario modificado {string}, {string}") do |nome, email|
  expect(page).to have_content nome
  expect(page).to have_content email
end
