class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :area_id, :city, :street, :building, :phone

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :area_id, numericality: { other_than: 0, message: "can't be blank"}
    validates :city
    validates :street
    validates :phone, length: { maximum: 11, message: "maximum is 11 characters"}
  end
  def save
    # user = User.find(params[:id])
    # item = Item.find(params[:id])
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, area_id: area_id, city: city, street: street, building: building, phone: phone, order_id: order.id)
  end
end