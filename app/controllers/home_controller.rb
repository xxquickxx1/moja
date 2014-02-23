class HomeController < ApplicationController
  # Pages controller
  def index
@page_title       = 'Web Development & Design For Small Companies in Edinburgh'
@page_description = 'Web Design Stories specialize in Web Development & Design for small businesses in Edinburgh. We work only with small companies in Edinburgh therefore we focus on your needs!'
@page_keywords    = 'Web Design, Web Development, SEO, Branding, Small Company, Website for small company, Grow your small business, small business'
    @portfolio = Portfolio.order("created_at DESC").limit(3)
    
    
  end

  def about
    @page_description = "Web Design for small businesses in Edinburgh. Grow your business with Web Design Stories. Get more customers, build your brand, stand out from the crowd and win your place in the market!"
   @page_title = "Web Design for small businesses | Web Design in Edinburgh"
   @page_keywords    = 'Web Design, Edinburgh, Web design in, web design in Edinburgh, web designer, designer, web, Website Development, SEO for small companies, Low budget website'
    @breadcrumb = "About"
    @testimonials = Testimonial.order("created_at DESC").limit(7)
  	render 'about/about'
  end

  def whoweare
     @page_description = "Web Design for small businesses in Edinburgh. Grow your business with Web Design Stories. Get more customers, build your brand, stand out from the crowd and win your place in the market!"
   @page_title = "Web Design for small businesses | Web Design in Edinburgh"
   @page_keywords    = 'Web Design, Edinburgh, Web design in, web design in Edinburgh, web designer, designer, web, Website Development, SEO for small companies, Low budget website'
   
    @breadcrumb = "Who We Are"
    render 'about/who-we-are'

  end

  def seo
    @page_description = "SEO For small companies from Web Design Stories. Make your way to the top of search engines without spending a lot of money!"
   @page_title = "SEO Campaign For Small Companies in Edinburgh - SEO Pricing - Fixed cost, Hourly rate, Performance based."
   @page_keywords    = 'Web Design, Website Development, Cheap SEO,Edinburgh, Small business, Small company Web Designer, Cheap Website, Get more customers'
  
    @breadcrumb = "SEO"
    render 'seo/seo'
  end

  def websiteprocess
        @page_description = "Web Design & Development process. How Web Design Stories build websites."
   @page_title = "Website Design & Development Process | Web Design Stories"
   @page_keywords    = 'Web Design process, Website Development process, Cheap SEO, Web Designer, How web design storis build websites, How to'
    @breadcrumb = "Website process"
    render 'about/websiteprocess'

  end


end
