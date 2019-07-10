# This is the steps file referred to destroy_users feature
# Place your code relative to that feature here

Dado("que exista um usuario cadastrado") do
  User.create(name: 'joao', email: 'joao@joao.com', password: '123456', password_confirmation: '123456')
end

Dado("que eu nao estou logado como gestor") do
end
