class ChargesController < ApplicationController

def new
  @user=current_user
  @lastOrder=@user.orders.last
  p @lastOrder
end

def create
  # Amount in cents
  @amount = 1500

  customer = Stripe::Customer.create(
    :email => 'example@stripe.com',
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )
  user=current_user
  order=user.orders.last
  order.ispaid=1
  order.save

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to charges_path
end
end
