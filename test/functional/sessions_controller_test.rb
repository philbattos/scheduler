require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  setup do
    @session = sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sessions)
  end

  test "should create session" do
    assert_difference('Session.count') do
      post :create, session: { date: @session.date, description: @session.description, end_time: @session.end_time, location: @session.location, speaker: @session.speaker, start_time: @session.start_time, title: @session.title, topic_one: @session.topic_one, topic_three: @session.topic_three, topic_two: @session.topic_two }
    end

    assert_response 201
  end

  test "should show session" do
    get :show, id: @session
    assert_response :success
  end

  test "should update session" do
    put :update, id: @session, session: { date: @session.date, description: @session.description, end_time: @session.end_time, location: @session.location, speaker: @session.speaker, start_time: @session.start_time, title: @session.title, topic_one: @session.topic_one, topic_three: @session.topic_three, topic_two: @session.topic_two }
    assert_response 204
  end

  test "should destroy session" do
    assert_difference('Session.count', -1) do
      delete :destroy, id: @session
    end

    assert_response 204
  end
end
