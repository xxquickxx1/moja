class UsersitesController < ApplicationController

before_filter :authenticate_user!

def create
	set_meta_tags :nofollow => true

@usersite = Usersite.create(params[:usersite])
if @usersite.save
	redirect_to dashboard_path, notice: 'Your website has been added. Thank you!'

else
	redirect_to :back, alert: 'Sorry but your website has not been saved. Please try again!'
end

end

end