class PortfoliosController < ApplicationController
  before_filter :validate_admin, :only => [:new, :edit]
  def portfolio
    @portfolio = Portfolio.order("created_at DESC").all

  	render 'portfolios/portfolio'
  end

  def show
  	@portfolio = Portfolio.find(params[:id])
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
