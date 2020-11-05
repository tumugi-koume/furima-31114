class OrdersController < ApplicationController
  def index
    @order_address = OrderAddress.new
  end

  def create
    binding.pry
    # @item = Item.find(params[:id])
    @order_address = OrderAddress.new(order_params)
    # if @order_address.valid?
    #   @order_address.save
    #   redirect_to root_path
    # else
    #   render action: :index
    # end
  end

  private
  def order_params
    # item = Item.find(params[:id])
    params.require(:order_address).permit(:postal_code, :area, :city, :street, :building, :phone).merge(user_id: current_user.id, item_id: item.id)
  end

end