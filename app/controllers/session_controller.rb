class SessionController < ApplicationController
  before_filter :require_admin
  
  def login
    path = params[:to] || root_path
    redirect_to path
  end
end
