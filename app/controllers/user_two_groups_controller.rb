class UserTwoGroupsController < ApplicationController
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
