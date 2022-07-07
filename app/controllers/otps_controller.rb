class OtpsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @otp = OtpsFactory::create(params[:mobile])

    render plain: @otp.otp
  end

  def verify
    otp = Otp.where(mobile: params[:mobile], otp: params[:otp], consumed: false).first

    if otp.nil?
      head 400
    else
      otp.update(consumed: true)

      head 204
    end
  end
end
