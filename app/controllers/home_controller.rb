class HomeController < ApplicationController
  # Pages controller
  def index
    @pageTitle = "In House Design - Web Development & Design "
    @portfolio = Portfolio.order("created_at DESC").limit(3)
    
    
  end

  def about
    @breadcrumb = "About"
    @testimonials = Testimonial.order("created_at DESC").limit(7)
  	render 'about/about'
  end

  def whoweare
    @breadcrumb = "Who We Are"
    render 'about/who-we-are'

  end

  def seo
    @breadcrumb = "SEO"
    render 'seo/seo'
  end

  def websiteprocess
    @breadcrumb = "Website process"
    render 'about/websiteprocess'

  end


end
