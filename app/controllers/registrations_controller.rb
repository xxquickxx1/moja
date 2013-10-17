class RegistrationsController < Devise::RegistrationsController

def create
  build_resource
 
  if resource.valid?
    begin
      resource.transaction do
        resource.save!
        UserMailer.welcome_email.deliver!
      end
    flash[:notice] = "Successfully registered"
    sign_in(resource)
    respond_with resource, :location => after_sign_up_path_for(resource)
  rescue ActiveRecord::RecordInvalid => invalid
    flash[:notice] = " Please try again"
    clean_up_passwords resource
    respond_with resource
  end
else
  clean_up_passwords resource
  respond_with resource
end
 
end

end