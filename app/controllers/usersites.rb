class UsersitesController < ApplicationController

def create
@usersite = Usersite.create(params[:usersite])
if @usersite.save
	UserMailer.welcome_email.deliver!
	redirect_to dashboard_path, notice: 'Your website has been added. Thank you!'

else
	redirect_to :back, alert: 'Sorry but your website has not been saved. Please try again!'
end

end

end