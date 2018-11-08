class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    flash[:notice] = "Autenticado com sucesso!"
    redirect_to root_path
  end

end
