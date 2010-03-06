require 'test_helper'

# These tests fail. Maybe it's due to Rails 3. I suspect that the sending of
# headers doesn't work yet.

class SessionControllerTest < ActionController::TestCase
  test 'invalid login credentials return forbidden' do
    send_bad_credentials
    get :login
    assert_response :unauthorized, 'Request did not return forbidden'
  end
  
  test 'valid login credentials redirect to given param' do
    send_good_credentials
    get :login, :to => '/test'
    assert_response :success, 'Request did not return success'
    assert_redirected_to '/test', 'Not redirected successfully'
  end
  
  test 'valid login credentials without given param redirect to root' do
    send_good_credentials
    get :login
    assert_response :success, 'Request did not return success'
    assert_redirected_to root_path, 'Not redirected to root'
  end
end
