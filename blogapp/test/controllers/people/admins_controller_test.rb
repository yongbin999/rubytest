require 'test_helper'

class People::AdminsControllerTest < ActionController::TestCase
  setup do
    @people_admin = people_admins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people_admins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create people_admin" do
    assert_difference('People::Admin.count') do
      post :create, people_admin: { department: @people_admin.department, name: @people_admin.name, school: @people_admin.school }
    end

    assert_redirected_to people_admin_path(assigns(:people_admin))
  end

  test "should show people_admin" do
    get :show, id: @people_admin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @people_admin
    assert_response :success
  end

  test "should update people_admin" do
    patch :update, id: @people_admin, people_admin: { department: @people_admin.department, name: @people_admin.name, school: @people_admin.school }
    assert_redirected_to people_admin_path(assigns(:people_admin))
  end

  test "should destroy people_admin" do
    assert_difference('People::Admin.count', -1) do
      delete :destroy, id: @people_admin
    end

    assert_redirected_to people_admins_path
  end
end
