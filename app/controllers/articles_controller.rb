class ArticlesController < ApplicationController
	def new
		render :layout => false
	end

	def create
		#render plain: params[:article].inspect
		render 'cardapios/visualizacao_cardapio', :layout => false
	end
end
