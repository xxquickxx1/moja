class WebsitesController < ApplicationController
  # GET /websites
  # GET /websites.json


  # GET /websites/1
  # GET /websites/1.json

def responsive
@breadcrumb = "Responsive Design"
render 'websites/responsive-design'
end

def existingwebsite
  @breadcrumb = "Existing Website"
  render 'websites/existing-website'
end

  # GET /websites/new
  # GET /websites/new.json
  def new
    @breadcrumb = "New Website"
    @website = Website.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @website }
    end
  end


  # POST /websites
  # POST /websites.json
  def create
    @website = Website.new(params[:website])

    respond_to do |format|
      if @website.save
        format.html { redirect_to :back, notice: 'Thank you! We will be in touch with you very soon!' }
      else
        format.html { render action: "new" }
        format.json { render json: @website.errors, status: :unprocessable_entity }
      end
    end
  end
end
