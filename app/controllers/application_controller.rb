class ApplicationController < ActionController::Base
  protect_from_forgery

def validate_admin
  redirect_to root_url and return unless user_signed_in? && current_user.try(:admin?)
  flash[:alert] = "No access to this page"
end


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

   rescue_from ActiveRecord::RecordNotFound do |exception|
    render_404
  end

  def render_404
    respond_to do |format|
      format.html { render "errors/404", :status => '404 Not Found', :layout => false }
      format.xml  { render :nothing => true, :status => '404 Not Found' }
    end
    true
  end

  def after_sign_in_path_for(resource)
  dashboard_path
end

end
