require 'test_helper'

class MakeRatingsControllerTest < ActionController::TestCase
  setup do
    @make_rating = make_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:make_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create make_rating" do
    assert_difference('MakeRating.count') do
      post :create, make_rating: {  }
    end

    assert_redirected_to make_rating_path(assigns(:make_rating))
  end

  test "should show make_rating" do
    get :show, id: @make_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @make_rating
    assert_response :success
  end

  test "should update make_rating" do
    patch :update, id: @make_rating, make_rating: {  }
    assert_redirected_to make_rating_path(assigns(:make_rating))
  end

  test "should destroy make_rating" do
    assert_difference('MakeRating.count', -1) do
      delete :destroy, id: @make_rating
    end

    assert_redirected_to make_ratings_path
  end
end
