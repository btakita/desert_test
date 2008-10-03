require File.dirname(__FILE__) + '/../test_helper'

class CommentTest < ActiveSupport::TestCase
  should_have_db_column :title
  should_have_db_column :body
  should_have_db_column :email
  should_have_db_column :post_id
end
