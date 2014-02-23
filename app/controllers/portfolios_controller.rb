class PortfoliosController < ApplicationController
  before_filter :validate_admin, :only => [:new, :edit]
  def portfolio
     @page_description = "Web Design Stories references/testimonials, see how we did and explore our happy clients."
   @page_title = "Website Design & Development By Web Design Stories Testimonials"
   @page_keywords    = 'Web Design, Website Development,testimonials, references, Cheap SEO, Web Designer, Cheap Website,business, Get more customers'
   
    @breadcrumb = "Portfolio Items"
    @portfolio = Portfolio.order("created_at DESC").all

  	render 'portfolios/portfolio'
  end

  def show
  	@portfolio = Portfolio.find(params[:id])
    @breadcrumb = @portfolio.name
       @page_title = "Web Design For" + " " + @portfolio.category + " " + @portfolio.name + "Edinburgh - Web Design Stories"
  end
 
 def new
 	@portfolio = Portfolio.new

 end

 def create
 
 	@portfolio = Portfolio.new(params[:portfolio])

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to @portfolio, notice: 'Project was successfully created.' }
        format.json { render json: @portfolio, status: :created, location: @portfolio }
      else
        format.html { render action: "new" }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
  end

 end



end
