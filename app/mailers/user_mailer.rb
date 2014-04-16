class UserMailer < ActionMailer::Base
default (:from => "info@postbox.tut", :to=>"somelist@postbox.tut")

  def signup_confirmation(user)
    @user = user

    mail to: user.username, subject: "Sign Up Confirmation"
  end
end
