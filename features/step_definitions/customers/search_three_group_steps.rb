Dado("que eu tenha uma lista de pesquisas {string}, {string}, {string}, {string}, {string}, {string}") do |user_group, meal, rating, like, disgust, suggestion|
  @customer_satisfactions = CustomerSatisfaction.create(user_group: user_group, meal: meal, rating: rating, like: like, disgust: disgust , suggestion: suggestion)
end
 
Dado("que eu esteja na página index de pesquisas") do
   email = 'user@user.com'
   password = 'user123'
   User.new(:email => email, :password => password, :password_confirmation => password).save!
   visit new_user_session_path
   fill_in :Email,with: "user@user.com"
   fill_in :Password,with: "user123"
   click_button "Log in"
   visit customer_satisfactions_path
end
 
Então("eu devo ver a lista completa com as pesquisas {string}, {string}, {string}, {string}, {string}, {string}") do |user_group, meal, rating, like, disgust, suggestion|
   expect(page).to have_content user_group
   expect(page).to have_content meal
   expect(page).to have_content rating
   expect(page).to have_content like
   expect(page).to have_content disgust
   expect(page).to have_content suggestion
end

 #show steps
Dado("que eu tenha uma pesquisa criada com os atributos:") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
 @customer_satisfaction = CustomerSatisfaction.new
  table.rows_hash.each do |field,value|
     @customer_satisfaction[field] = value
  end
   @customer_satisfaction.save
end

Quando("vejo todos os resultados somente do grupo 3") do 
  visit user_three_groups_path
end
 

  