class ContactsController < ApplicationController
  def create
  	@contact = Contact.create(params[:contact])
  		if @contact.save
  			redirect_to :back, notice: "We received your message, we'll be in touch very soon!"
  		else
  			redirect_to :back, alert: 'There was an error, please try again.'
  		end
  end
end
