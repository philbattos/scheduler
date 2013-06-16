require 'test_helper'

class ConferencesControllerTest < ActionController::TestCase
  setup do
    @conference = conferences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conferences)
  end

  test "should create conference" do
    assert_difference('Conference.count') do
      post :create, conference: { end_date: @conference.end_date, name: @conference.name, start_date: @conference.start_date }
    end

    assert_response 201
  end

  test "should show conference" do
    get :show, id: @conference
    assert_response :success
  end

  test "should update conference" do
    put :update, id: @conference, conference: { end_date: @conference.end_date, name: @conference.name, start_date: @conference.start_date }
    assert_response 204
  end

  test "should destroy conference" do
    assert_difference('Conference.count', -1) do
      delete :destroy, id: @conference
    end

    assert_response 204
  end
end
