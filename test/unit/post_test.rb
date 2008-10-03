require File.dirname(__FILE__) + '/../test_helper'

class PostTest < ActiveSupport::TestCase
  should_have_db_column :title
  should_have_db_column :body
  should_have_db_column :blog_id
end
