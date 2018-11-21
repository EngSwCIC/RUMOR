#encoding: utf-8

Dado /que eu estou na (página do formulário de avaliação)/ do |page_name|
  visit path_to(page_name)
end

Quando /eu preencho o formulário de avaliação com:/ do |table|
  table.rows_hash.each do |field, value|
    if field == 'Tipo de usuário' or field =='Refeição' or field == 'Nota'
      select(value, :from => field)
    else
      fill_in field, :with => value
    end
  end
end

E /eu pressiono "(Enviar)"/ do |button|
  click_button(button)
end

Então /eu devo estar na (página inicial do Rumor)/ do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end

Então /eu devo ver "(Avaliação enviada com sucesso)"/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Então /eu devo ver "(Os seguintes erros impediram o envio da avaliação)"/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end