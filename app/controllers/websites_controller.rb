class WebsitesController < ApplicationController
  # GET /websites
  # GET /websites.json


  # GET /websites/1
  # GET /websites/1.json
def existingwebsite
  @breadcrumb = "Existing Website"
  render 'websites/existing-website'
end

  def show
    @breadcrumb = "Website Order"
    @website = Website.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @website }
    end
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
        format.html { redirect_to @website, notice: 'Order has been placed! Thank you!' }
        format.json { render json: @website, status: :created, location: @website }
      else
        format.html { render action: "new" }
        format.json { render json: @website.errors, status: :unprocessable_entity }
      end
    end
  end
end
