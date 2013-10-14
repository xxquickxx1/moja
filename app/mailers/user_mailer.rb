class UserMailer < ActionMailer::Base
  default from: "wdstories@example.com"

  def post_email(email)
    mail(:to => email, :subject => "Registered")
   end
end
