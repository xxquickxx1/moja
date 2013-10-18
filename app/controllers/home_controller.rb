class HomeController < ApplicationController
  # Pages controller
  def index
    @pageTitle = "Web Development & Design For Small Companies"
    @portfolio = Portfolio.order("created_at DESC").limit(3)
    
    
  end

  def about
    @pageTitle = "Website Design For Small Companies - Grow Your Business"
    @breadcrumb = "About"
    @testimonials = Testimonial.order("created_at DESC").limit(7)
  	render 'about/about'
  end

  def whoweare
    @pageTitle = "Small Companies Focused Web Development & Design"
    @breadcrumb = "Who We Are"
    render 'about/who-we-are'

  end

  def seo
    @pageTitle = "SEO Campaign For Small Companies - Web Design Stories"
    @breadcrumb = "SEO"
    render 'seo/seo'
  end

  def websiteprocess
    @pageTitle = "Website Design & Development - Small Business Focused"
    @breadcrumb = "Website process"
    render 'about/websiteprocess'

  end


end
