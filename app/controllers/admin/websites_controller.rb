class Admin::WebsitesController < Admin::BaseController

def home
	set_meta_tags :nofollow => true

@websites = Website.order("id DESC")
end

def show
	set_meta_tags :nofollow => true

	@website = Website.find(params[:id])
end

end
