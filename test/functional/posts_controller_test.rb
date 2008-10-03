require File.dirname(__FILE__) + '/../test_helper'

class PostsControllerTest < ActionController::TestCase

  def setup
    @post = Factory(:post)
  end

  should_be_restful do |resource|
    resource.formats = [:html, :xml]
    resource.destroy.flash = nil
  end
end
