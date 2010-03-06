require 'rubygems'
require 'redgreen'
require 'yaml'
ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
  
  def send_bad_credentials
    send_credentials('BAD', 'CREDENTIALS')
  end
  
  def send_good_credentials
    send_credentials('matchusian', 'bloggage')
  end
  
  def send_credentials(username, password)
    @request.env["HTTP_AUTHORIZATION"] = ActionController::HttpAuthentication::Basic.encode_credentials(username, password)
  end
end
