class OtpsNumberGeneratorTest < ActionView::TestCase
  test "should return 6 digits" do
    otp_string = OtpsNumberGenerator::generate

    assert_match /\d{6}/, otp_string
  end
end
