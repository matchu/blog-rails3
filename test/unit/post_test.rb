require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'should not validate without a title' do
    post = stub_post :title => nil
    assert !post.valid?, 'Post valid without title'
  end
  
  test 'should not validate without a body' do
    post = stub_post :body => nil
    assert !post.valid?, 'Post valid without body'
  end
end

def stub_post(options = {})
  options.reverse_merge! :title => 'Hello, world!',
    :body => "<p>How are you today?</p><p>I am fine.</p>"
  Post.new options
end
