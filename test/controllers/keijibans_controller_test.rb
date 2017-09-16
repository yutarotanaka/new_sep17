require 'test_helper'

class KeijibansControllerTest < ActionController::TestCase
  setup do
    @keijiban = keijibans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:keijibans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create keijiban" do
    assert_difference('Keijiban.count') do
      post :create, keijiban: { content: @keijiban.content, user_id: @keijiban.user_id }
    end

    assert_redirected_to keijiban_path(assigns(:keijiban))
  end

  test "should show keijiban" do
    get :show, id: @keijiban
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @keijiban
    assert_response :success
  end

  test "should update keijiban" do
    patch :update, id: @keijiban, keijiban: { content: @keijiban.content, user_id: @keijiban.user_id }
    assert_redirected_to keijiban_path(assigns(:keijiban))
  end

  test "should destroy keijiban" do
    assert_difference('Keijiban.count', -1) do
      delete :destroy, id: @keijiban
    end

    assert_redirected_to keijibans_path
  end
end
