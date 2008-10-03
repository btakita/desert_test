require File.dirname(__FILE__) + '/../test_helper'

class BlogsControllerTest < ActionController::TestCase

  def setup
    @blog = Factory(:blog)
  end

  should_be_restful do |resource|
    resource.formats = [:html, :xml]
    resource.destroy.flash = nil
  end
end
