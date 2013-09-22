require 'test_helper'

class ProfessorCoursesControllerTest < ActionController::TestCase
  setup do
    @professor_course = professor_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professor_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professor_course" do
    assert_difference('ProfessorCourse.count') do
      post :create, professor_course: {  }
    end

    assert_redirected_to professor_course_path(assigns(:professor_course))
  end

  test "should show professor_course" do
    get :show, id: @professor_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professor_course
    assert_response :success
  end

  test "should update professor_course" do
    patch :update, id: @professor_course, professor_course: {  }
    assert_redirected_to professor_course_path(assigns(:professor_course))
  end

  test "should destroy professor_course" do
    assert_difference('ProfessorCourse.count', -1) do
      delete :destroy, id: @professor_course
    end

    assert_redirected_to professor_courses_path
  end
end
