class UserTwoGroupsController < ApplicationController
  # Método Index é chamado de duas maneiras
  # O intuito dele é retornar todos as pesquisas feitas pelo usuário
  # A diferença é dada por qual formato ele será renderizado
  # Caso o admin queria ver somente pela web ele irá renderizar o formato html
  # Mas caso queria baixar a planilha, ele terá um formato pdf  
  def index
    @customer_satisfactions = CustomerSatisfaction.order('rating DESC').all
        respond_to do |format|
          format.html
          format.pdf do
            render pdf: "relatorio"   
          end
        end
      end 
end
