require 'test_helper'

class TalentsControllerTest < ActionController::TestCase
  setup do
    @talent = talents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create talents" do
    assert_difference('Talent.count') do
      post :create, :talents => @talent.attributes
    end

    assert_redirected_to talent_path(assigns(:talents))
  end

  test "should show talents" do
    get :show, :id => @talent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @talent.to_param
    assert_response :success
  end

  test "should update talents" do
    put :update, :id => @talent.to_param, :talents => @talent.attributes
    assert_redirected_to talent_path(assigns(:talents))
  end

  test "should destroy talents" do
    assert_difference('Talent.count', -1) do
      delete :destroy, :id => @talent.to_param
    end

    assert_redirected_to talents_path
  end
end
