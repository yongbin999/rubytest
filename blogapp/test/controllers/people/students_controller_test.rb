require 'test_helper'

class People::StudentsControllerTest < ActionController::TestCase
  setup do
    @people_student = people_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create people_student" do
    assert_difference('People::Student.count') do
      post :create, people_student: { attendence: @people_student.attendence, grade: @people_student.grade, name: @people_student.name }
    end

    assert_redirected_to people_student_path(assigns(:people_student))
  end

  test "should show people_student" do
    get :show, id: @people_student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @people_student
    assert_response :success
  end

  test "should update people_student" do
    patch :update, id: @people_student, people_student: { attendence: @people_student.attendence, grade: @people_student.grade, name: @people_student.name }
    assert_redirected_to people_student_path(assigns(:people_student))
  end

  test "should destroy people_student" do
    assert_difference('People::Student.count', -1) do
      delete :destroy, id: @people_student
    end

    assert_redirected_to people_students_path
  end
end
