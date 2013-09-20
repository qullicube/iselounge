require 'test_helper'

class MakeCommentsControllerTest < ActionController::TestCase
  setup do
    @make_comment = make_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:make_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create make_comment" do
    assert_difference('MakeComment.count') do
      post :create, make_comment: {  }
    end

    assert_redirected_to make_comment_path(assigns(:make_comment))
  end

  test "should show make_comment" do
    get :show, id: @make_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @make_comment
    assert_response :success
  end

  test "should update make_comment" do
    patch :update, id: @make_comment, make_comment: {  }
    assert_redirected_to make_comment_path(assigns(:make_comment))
  end

  test "should destroy make_comment" do
    assert_difference('MakeComment.count', -1) do
      delete :destroy, id: @make_comment
    end

    assert_redirected_to make_comments_path
  end
end
