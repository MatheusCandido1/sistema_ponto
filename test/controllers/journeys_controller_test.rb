require 'test_helper'

class JourneysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @journey = journeys(:one)
  end

  test "should get index" do
    get journeys_url
    assert_response :success
  end

  test "should get new" do
    get new_journey_url
    assert_response :success
  end

  test "should create journey" do
    assert_difference('Journey.count') do
      post journeys_url, params: { journey: { end_journey: @journey.end_journey, lunch_end: @journey.lunch_end, lunch_start: @journey.lunch_start, lunch_time: @journey.lunch_time, start_journey: @journey.start_journey, user_id: @journey.user_id, worked_hours: @journey.worked_hours } }
    end

    assert_redirected_to journey_url(Journey.last)
  end

  test "should show journey" do
    get journey_url(@journey)
    assert_response :success
  end

  test "should get edit" do
    get edit_journey_url(@journey)
    assert_response :success
  end

  test "should update journey" do
    patch journey_url(@journey), params: { journey: { end_journey: @journey.end_journey, lunch_end: @journey.lunch_end, lunch_start: @journey.lunch_start, lunch_time: @journey.lunch_time, start_journey: @journey.start_journey, user_id: @journey.user_id, worked_hours: @journey.worked_hours } }
    assert_redirected_to journey_url(@journey)
  end

  test "should destroy journey" do
    assert_difference('Journey.count', -1) do
      delete journey_url(@journey)
    end

    assert_redirected_to journeys_url
  end
end
