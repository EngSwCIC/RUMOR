class ArticlesController < ApplicationController
	def new
		render :layout => false
	end

	def create
		render plain: params[:article].inspect
	end
end
