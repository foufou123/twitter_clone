class UserMailer < ActionMailer::Base
  default from: "alexdinnel@aol.com"

  def signup_confirmation(user)
    @user = user

    mail to: alex@househappy.org, subject: "Sign Up Confirmation"
  end
end
