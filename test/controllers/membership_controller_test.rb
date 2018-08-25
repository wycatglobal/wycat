require 'test_helper'

class MembershipControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get membership_new_url
    assert_response :success
  end

end
