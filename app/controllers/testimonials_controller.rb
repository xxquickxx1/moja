class TestimonialsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]
  def testimonial
    @pageTitle = "Testimonials | Web Design Stories"
    @breadcrumb = "Testimonials"
    @testimonials = Testimonial.find(:all)
    @empty = "Sorry there's no testimonials yet" if @testimonials.size == 0
  	
  end

  def new
    @breadcrumb = "New Testimonial"
@testimonial = Testimonial.new
  end

  def create
  	@testimonial = Testimonial.new(params[:testimonial])
  	if @testimonial.save
  		redirect_to testimonial_path
  	else
  		redirect_to testimonial_path, flash[:alert] = "Sorry your testimonials could not be saved"
  end
end
end
