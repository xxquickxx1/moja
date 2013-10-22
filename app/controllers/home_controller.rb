class HomeController < ApplicationController
  # Pages controller
  def index
@page_title       = 'Web Development & Design For Small Companies | Web Design Stories'
@page_description = 'Web Design Stories specialize in Web Development & Design, Branding and Marketing for small companies. Get more clients and expand your business with us'
@page_keywords    = 'Web Design, Web Development, SEO, Branding, Small Company, Website for small company, Grow your small business, small business'
    @pageTitle = ""
    @portfolio = Portfolio.order("created_at DESC").limit(3)
    
    
  end

  def about
    @page_description = "Grow your business with Web Design Stories. Get more customers, build your brand, stand out from the crowd and win your place in the market!"
   @page_title = "Website Design For Small Companies - Grow Your Business | Web Design Stories"
   @page_keywords    = 'Web Design, Website Development, SEO for small companies, Low budget website'
    @breadcrumb = "About"
    @testimonials = Testimonial.order("created_at DESC").limit(7)
  	render 'about/about'
  end

  def whoweare
        @page_description = "Web Design & Development for small companies, grow your business and get more customers!"
   @page_title = "Small Companies Focused Web Development & Design"
   @page_keywords    = 'Web Design, Website Development, Cheap SEO, Web Designer, Cheap Website, Get more customers'
  
    @breadcrumb = "Who We Are"
    render 'about/who-we-are'

  end

  def seo
    @page_description = "SEO For small companies from Web Design Stories. Make your way to the top of search engines without spending a lot of money!"
   @page_title = "SEO Campaign For Small Companies - Web Design Stories"
   @page_keywords    = 'Web Design, Website Development, Cheap SEO, Web Designer, Cheap Website, Get more customers'
  
    @breadcrumb = "SEO"
    render 'seo/seo'
  end

  def websiteprocess
        @page_description = "Focused on small businesses Web Development & Design company based in Edinburgh"
   @page_title = "Website Design & Development - Small Business Focused"
   @page_keywords    = 'Web Design, Website Development, Cheap SEO, Web Designer, Cheap Website, Get more customers'
    @breadcrumb = "Website process"
    render 'about/websiteprocess'

  end


end
