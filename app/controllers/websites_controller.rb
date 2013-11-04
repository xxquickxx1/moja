class WebsitesController < ApplicationController
  # GET /websites
  # GET /websites.json


  # GET /websites/1
  # GET /websites/1.json

def responsive
   @page_title = "Responsive Website Design | Web Design Stories"
   @page_description = "Responsive website design to fit all screen sizes, whether it's iPhone, tablet, PC or future device."
   @page_keywords    = 'Responsive Design, responsive website, website that fit all screen sizes, website for all devices, screen size, any screen size website'
@breadcrumb = "Responsive Design"
render 'websites/responsive-design'
end

def existingwebsite
  @page_title = "Website Updates & Management | Web Design Stories"
   @page_description = "Let us manage your website and benefit from our professional SEO and marketing advice! Turn your company into a successful brand!"
   @page_keywords    = 'website management, website, web development, update website, website updates, web development, website development, website design, cheap website, cheap web design, affordable web Design'
 
  @breadcrumb = "Existing Website"
  render 'websites/existing-website'
end

  # GET /websites/new
  # GET /websites/new.json
  def new
    @page_title = "Web Design Cost Calculator | Instant Website Price"
   @page_description = "Free onsite SEO with every new website built with Web Design Stories. We specialize in small companies sector, build your brand and become one of the successful companies."
   @page_keywords    = 'Web Design Calculator, Website calculator, web development price calculator, price calculator website, website, calculator'
 
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
    set_meta_tags :nofollow => true

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
