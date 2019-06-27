class ApplicationController < ActionController::Base
  include ApplicationHelper
  include MenusHelper
  def after_sign_in_path_for(resource_or_scope)
    menus_path
  end

  def after_update_path_for(resource_or_scope)
    menus_path
  end
end
