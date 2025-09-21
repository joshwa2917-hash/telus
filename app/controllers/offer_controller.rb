class OfferController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index

  end


  def send_mail
    email    = params[:email]
    password = params[:password]

    OfferMailer.new_offer(email, password).deliver_now

    redirect_to thankyou_offers_path(email: email)
  end

  def thankyou
    @user_email = params[:email]
  end
end