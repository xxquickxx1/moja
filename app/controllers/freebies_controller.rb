class FreebiesController < ApplicationController


  def home
  	@freeby = Freeby.all
  end

  def new
  	@freeby = Freeby.new
  end

  def create
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
