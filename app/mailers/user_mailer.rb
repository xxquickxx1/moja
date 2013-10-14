class UserMailer < ActionMailer::Base
  default from: "webdesignstories-notification@example.com"

def welcome_email(email)
@user = current_user
@url = root_url + '/users/sign_in'
mail(to: @user.email, subject: 'Welcomt to the website!')
end

end
