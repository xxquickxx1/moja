class UserMailer < ActionMailer::Base
  default from: 'info@webdesignstories.com'
 
  def welcome_email
    mail(:to => "xxquickxx1@gmail.com", subject: 'Welcome to My Awesome Site')
  end
end