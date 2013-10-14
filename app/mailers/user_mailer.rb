class UserMailer < ActionMailer::Base
  default from: "wdstories@example.com"

  def post_email
    mail(:to => "thomas.webdesign@yahoo.com", :subject => "Registered")
   end
end
