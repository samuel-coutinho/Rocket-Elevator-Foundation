require 'test_helper'

class InterventionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get interventions_new_url
    assert_response :success
  end

end
