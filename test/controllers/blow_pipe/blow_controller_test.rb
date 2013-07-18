require 'test_helper'

module BlowPipe
  class BlowControllerTest < ActionController::TestCase
    test "should get it" do
      get :it
      assert_response :success
    end

  end
end
