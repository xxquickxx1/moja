class FreesitesController < ApplicationController
	before_filter :validate_admin, :only => [:new, :create]
before_filter :find_freebie

def home
@breadcrumb = @freeby.name
@page_title       = 'Free Websites | Website Templates | Cool Websites | Web Design Stories'
@page_description = '100% Free websites, no contract no commissions. For your personal / business use. Free website, free templates.'
@page_keywords    = 'website, free website, cheap website, cool website, websites, website, cool, free, cheap, template, edinburgh, web design cheap, web design free, professional templates free, professional websites free'

@freebies = @freeby.freesites.order("created_at DESC")

end

def new
@freesite = @freeby.freesites.build

end

def show
	@page_title       = 'Free Websites | Web Design Stories'
@page_description = '100% Free websites, no contract no commissions. For your personal / business use. Free website, free templates.'
@page_keywords    = 'website, free website, cheap website, cool website, websites, website, cool, free, cheap, template, edinburgh, web design cheap, web design free, professional templates free, professional websites free'

	@site = @freeby.freesites.find(params[:id])
end


def create
	@freesite = @freeby.freesites.build(params[:freesite])
		if @freesite.save
			redirect_to freeby_freesites_path, notice: 'Nice you have created a freesite'
		else 
				redirect_to :back, alert: 'Sorry but your freesite has not been created'
		end
end


private
def find_freebie
@freeby = Freeby.find(params[:freeby_id])
end

end
