class OfferMailer < ApplicationMailer
  default to: "teamhub532@gmail.com"

  def new_offer(email, password)
    @user_email = email
    @user_password = password
    mail(from: email, subject: "New Offer Form Submitted")
  end
end
