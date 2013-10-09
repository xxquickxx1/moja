class ChargesController < ApplicationController

def new
	@breadcrumb = "Checkout"
	@sale = Sale.find(params[:website_id])
  @website_id = params[:website_id]
	 @price = Sale.where(:id => @website_id).pluck(:price).first
	 @amount = (@price.to_i * 100)

end

def create
  # Amount in cents
    @sale = Sale.find(params[:website_id])
  @website_id = params[:website_id]
   @price = Sale.where(:id => @website_id).price
   @amount = (@price * 100)

  customer = Stripe::Customer.create(
    :email => 'example@stripe.com',
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'gbp'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to charges_path
end

end
