require 'test_helper'

class SkillControllerTest < ActionController::TestCase
  test "should get faker" do
    get :faker
    assert_response :success
  end

end
