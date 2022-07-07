module OtpsNumberGenerator
  extend self

  def generate
    otpString = (rand()*1e7).round.to_s[0,6]
    otpString
  end
end
