class Admin::WebsitesController < Admin::BaseController

def home
@websites = Website.order("id DESC")
end

def show
	@website = Website.find(params[:id])
end

end
