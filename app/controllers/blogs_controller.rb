class BlogsController < ApplicationController
  # GET /blogs
  # GET /blogs.json
  before_filter :validate_admin, :except => [:blog, :show]
  
  def blog
    @page_description = "Web Design Stories news, tips and announcements in Edinburgh."
   @page_title = "Blog Tips News | Web Design Stories"
   @page_keywords    = 'Web Design tips, Website Development tips,news, web design news,web design tips'
    @breadcrumb = "Posts"
    @blogs = Blog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blogs }
    end
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show

    @blog = Blog.find_by_title(params[:id])
    if @blog
      @breadcrumb = @blog.category
   @page_title = @blog.title + " | " + "Web Design Stories"
  @page_keywords    = 'Web Design, Website Development' + @blog.title + ", " + @blog.category + " " + "Website, news, tips, announcements, Edinburgh"

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog }
    end
  end
  end

  # GET /blogs/new
  # GET /blogs/new.json
  def new
    @blog = Blog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blog }
    end
  end

  # GET /blogs/1/edit
  def edit
    @blog = Blog.find(params[:id])
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.new(params[:blog])

    respond_to do |format|
      if @blog.save
        format.html { redirect_to :back, notice: 'Blog was successfully created.' }
      else
        format.html { render action: "new" }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blogs/1
  # PUT /blogs/1.json
  def update
    @blog = Blog.find(params[:id])

    respond_to do |format|
      if @blog.update_attributes(params[:blog])
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    respond_to do |format|
      format.html { redirect_to blogs_url }
      format.json { head :no_content }
    end
  end
end
