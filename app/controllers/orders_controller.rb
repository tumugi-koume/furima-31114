class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :item_id_find, only: [:index, :create, :remove_to_index]
  before_action :remove_to_index

  def index
    @order_address = OrderAddress.new
  end

  def create
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      pay_item
      @order_address.save
      redirect_to root_path
    else
      render action: :index
    end
  end

  private
  def order_params
    params.require(:order_address).permit(:postal_code, :area_id, :city, :street, :building, :phone).merge(user_id: current_user.id, item_id: @item.id, token: params[:token], price: @item.price)
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: order_params[:price],
      card: order_params[:token],
      currency: 'jpy'
    )
  end

  def item_id_find
    @item = Item.find(params[:item_id])
  end

  def remove_to_index
    redirect_to root_path if current_user.id == @item.user_id
  end

end
