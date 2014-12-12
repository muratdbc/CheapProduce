class OrdersController < ApplicationController
  before_filter :authenticate_user!

  def new
    @order=Order.new
  end
end
