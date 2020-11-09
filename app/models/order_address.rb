class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :area_id, :city, :street, :building, :phone, :token, :price

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
    validates :area_id, numericality: { other_than: 0, message: "can't select ---" }
    validates :city
    validates :street
    validates :phone, format: { with: /\A\d{1,11}\z/, message: 'is invalid' }
    validates :token
  end
  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, area_id: area_id, city: city, street: street, building: building, phone: phone, order_id: order.id)
  end
end
