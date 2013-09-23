require 'test_helper'

class ProfessorsCoursesControllerTest < ActionController::TestCase
  setup do
    @professors_course = professors_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professors_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professors_course" do
    assert_difference('ProfessorsCourse.count') do
      post :create, professors_course: {  }
    end

    assert_redirected_to professors_course_path(assigns(:professors_course))
  end

  test "should show professors_course" do
    get :show, id: @professors_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professors_course
    assert_response :success
  end

  test "should update professors_course" do
    patch :update, id: @professors_course, professors_course: {  }
    assert_redirected_to professors_course_path(assigns(:professors_course))
  end

  test "should destroy professors_course" do
    assert_difference('ProfessorsCourse.count', -1) do
      delete :destroy, id: @professors_course
    end

    assert_redirected_to professors_courses_path
  end
end
