class ApplicationController < ActionController::Base
  protect_from_forgery

def validate_admin
  redirect_to root_url and return unless user_signed_in? && current_user.try(:admin?)
end


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

 

 

  def after_sign_in_path_for(resource)
  dashboard_path
end

end
