module OtpsFactory
  extend self

  def create(mobile)
    otpString = OtpsNumberGenerator::generate
    Otp.create(mobile: mobile, otp: otpString, consumed: false)
  end
end
