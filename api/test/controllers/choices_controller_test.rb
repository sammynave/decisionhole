require 'test_helper'

class ChoicesControllerTest < ActionController::TestCase
  setup do
    @choice = choices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:choices)
  end

  test "should create choice" do
    assert_difference('Choice.count') do
      post :create, choice: { decision_id: @choice.decision_id, image_url: @choice.image_url, title: @choice.title }
    end

    assert_response 201
  end

  test "should show choice" do
    get :show, id: @choice
    assert_response :success
  end

  test "should update choice" do
    put :update, id: @choice, choice: { decision_id: @choice.decision_id, image_url: @choice.image_url, title: @choice.title }
    assert_response 204
  end

  test "should destroy choice" do
    assert_difference('Choice.count', -1) do
      delete :destroy, id: @choice
    end

    assert_response 204
  end
end
