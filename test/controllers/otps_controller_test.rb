require "test_helper"

class OtpsControllerTest < ActionDispatch::IntegrationTest
  test "can generate and verify an otp only once" do
    post otps_path, params: { mobile: "91234567" }

    generated_otp = @response.body

    assert_response :success
    assert_match /\d{6}/, generated_otp

    get otps_verify_path, params: { mobile: "91234567", otp: generated_otp }
    assert_response :success

    get otps_verify_path, params: { mobile: "91234567", otp: generated_otp }
    assert_response 400
  end
end
