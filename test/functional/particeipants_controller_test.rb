require 'test_helper'

class ParticeipantsControllerTest < ActionController::TestCase
  setup do
    @particeipant = particeipants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:particeipants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create particeipant" do
    assert_difference('Particeipant.count') do
      post :create, :particeipant => @particeipant.attributes
    end

    assert_redirected_to particeipant_path(assigns(:particeipant))
  end

  test "should show particeipant" do
    get :show, :id => @particeipant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @particeipant.to_param
    assert_response :success
  end

  test "should update particeipant" do
    put :update, :id => @particeipant.to_param, :particeipant => @particeipant.attributes
    assert_redirected_to particeipant_path(assigns(:particeipant))
  end

  test "should destroy particeipant" do
    assert_difference('Particeipant.count', -1) do
      delete :destroy, :id => @particeipant.to_param
    end

    assert_redirected_to particeipants_path
  end
end
