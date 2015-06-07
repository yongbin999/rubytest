require 'test_helper'

class People::AdminProfilesControllerTest < ActionController::TestCase
  setup do
    @people_admin_profile = people_admin_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people_admin_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create people_admin_profile" do
    assert_difference('People::AdminProfile.count') do
      post :create, people_admin_profile: { account: @people_admin_profile.account, body: @people_admin_profile.body, people/admin_id: @people_admin_profile.people/admin_id }
    end

    assert_redirected_to people_admin_profile_path(assigns(:people_admin_profile))
  end

  test "should show people_admin_profile" do
    get :show, id: @people_admin_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @people_admin_profile
    assert_response :success
  end

  test "should update people_admin_profile" do
    patch :update, id: @people_admin_profile, people_admin_profile: { account: @people_admin_profile.account, body: @people_admin_profile.body, people/admin_id: @people_admin_profile.people/admin_id }
    assert_redirected_to people_admin_profile_path(assigns(:people_admin_profile))
  end

  test "should destroy people_admin_profile" do
    assert_difference('People::AdminProfile.count', -1) do
      delete :destroy, id: @people_admin_profile
    end

    assert_redirected_to people_admin_profiles_path
  end
end
