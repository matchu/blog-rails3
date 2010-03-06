require 'yaml'
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method 'is_admin?'
  
  def is_admin?
    authenticate_with_http_basic do |username, password|
      validate_admin(username, password)
    end
  end
  
  def require_admin
    authenticate_or_request_with_http_basic("Blog Administration") do |username, password|
      validate_admin(username, password)
    end
  end
  
  def validate_admin(username, password)
    admin = YAML.load_file(File.join(Rails.root, 'config', 'admin.yml'))
    username == admin['username'] && password == admin['password']
  end
end
