require 'test_helper'

class CommentTest < ActiveSupport::TestCase
   test "humanized_rating" do
   	 comment_output = Comment.new(:rating => '1_star').humanized_rating
   	 expected = 'one star'
   	 actual = comment_output
     assert_equal expected, actual
   end
end
