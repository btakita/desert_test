require File.dirname(__FILE__) + '/../test_helper'

class CommentsControllerTest < ActionController::TestCase

  def setup
    @comment = Factory(:comment)
  end

  should_be_restful do |resource|
    resource.formats = [:html, :xml]
    resource.destroy.flash = nil
  end
end
