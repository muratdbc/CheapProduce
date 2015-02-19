class OrdersController < ApplicationController
  # before_filter :authenticate_user!

  def index
    @user=current_user
    @orders=@user.orders
  end

  def new
    @order=Order.new
  end
  def create
    @user=current_user
    @order=@user.orders.create(order_params)
    redirect_to new_charge_path
  end

  def edit
    @order=Orders.find(params[:id])
  end


  private

    def order_params
      params.require(:order).permit(:firstname,:lastname,:streetaddres,:city,:state,:zip,:phonenumber,:boxcount,:ispaid)
    end
end
