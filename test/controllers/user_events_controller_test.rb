require 'test_helper'

class UserEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get user_events_update_url
    assert_response :success
  end

  test "should get delete" do
    get user_events_delete_url
    assert_response :success
  end

end
