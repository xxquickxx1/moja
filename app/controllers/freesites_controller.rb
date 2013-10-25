class FreesitesController < ApplicationController
	before_filter :validate_admin, :except => [:home]
before_filter :find_freebie


def home
@breadcrumb = "Freebies"
@freebies = @freeby.freesites.all

end

def new
@freesite = @freeby.freesites.build

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
