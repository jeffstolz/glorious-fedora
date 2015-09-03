=begin
require 'test_helper'
class CommentsControllerTest < ActionController::TestCase
  test "create comment test" do
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place)
    place.comments.create(comment_params.merge(:user => current_user))
    redirect_to place_path(place)
    assert_response :success
  end
end
=end


require 'test_helper'
class CommentsControllerTest < ActionController::TestCase
  test "create comment test" do
    user = FactoryGirl.create(:user)
    sign_in user
    place = FactoryGirl.create(:place, :user => user)
    comment = FactoryGirl.create(:comment, user: user, place: place)
    post :create, :place_id => place.id, :comments => {:message => 'awesome!', :rating => '1_star'}
	assert_redirected_to place_path(place)
	assert_not_nil comment   
  end
end



#    @place = Place.find(params[:place_id])
#    @place.comments.create(comment_params.merge(:user => current_user))
#    redirect_to place_path(@place)