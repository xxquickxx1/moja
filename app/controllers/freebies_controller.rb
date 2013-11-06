class FreebiesController < ApplicationController


  def home
  	@freeby = Freeby.all
    @page_description = "100% Free websites for commercial or private use. No contracts no sign up!"
   @page_title = "Freebies | Free website | Web Design in Edinburgh"
   @page_keywords    = 'Web Design, Website Development, Cheap SEO, Web Designer, Free website, websites for free, free web design, Cheap Website,business, Get more customers'
    @breadcrumb = ""
  end

  def new
        set_meta_tags :nofollow => true
  	@freeby = Freeby.new
  end

  def create
        set_meta_tags :nofollow => true
  	@freeby = Freeby.create(params[:freeby])
  		if @freeby.save
  			redirect_to freebie_path, notice: 'You have created a Project!'
  		else
  			redirect_to :back, alert: 'Could not create Project.. Sorry!'
  		end
  end

  def show
  end


end
