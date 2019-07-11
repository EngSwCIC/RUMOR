 def seleciona_data_hora(ano_inteiro, mes_string, dia_inteiro, texto_do_label)
    label = page.find('label', text: texto_do_label)
    id = label['for']
    select dia_inteiro,    from: "#{id}_3i"
    select mes_string,  from: "#{id}_2i"
    select ano_inteiro,   from: "#{id}_1i"
  end

    def seleciona_hora(hora_inteiro, minuto_inteiro, texto_do_label)
label = page.find('label', text: texto_do_label)
    id = label['for']
    select hora_inteiro,    from: "#{id}_4i",match: :first

    select minuto_inteiro,  from: "#{id}_5i",match: :first

  end

Quando("eu estiver logado e na página de horários de funcionamento") do
    email = 'user@user.com'
    password = 'user123'
    User.new(:email => email, :password => password, :password_confirmation => password).save!
    visit new_user_session_path
    fill_in :Email,with: "user@user.com"
    fill_in :Password,with: "user123"
    click_button "Log in"
    visit hora_de_funcionamentos_path
end
  
Quando("clicar em new horário de funcionamento") do
    visit new_hora_de_funcionamento_path
end
  
Então("devo ir para a página de criação de hora de funcionamento") do
    page.find('h1', text:"New Hora De Funcionamento")
end

E("colocar os dados corretamente") do
     seleciona_data_hora(2018, "November", 21, "Dia")
    seleciona_hora(8, 0, "Inicio")
     seleciona_hora(22, 0, "Fechamento")
    
end
  
Quando("clicar em criar um novo horário de funcionamento deve ser criado") do
    click_button "Create Hora de funcionamento"
end
