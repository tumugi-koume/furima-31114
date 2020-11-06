class OrderAddress
  include ActiveModel::Model
  attr_accessor :user, :item, :postal_code, :area, :city, :street, :building, :phone

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area

  with_options presence: true do
    validates :user
    validates :item 
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :area, numericality: { other_than: 0, message: "can't be blank"}
    validates :city
    validates :street
    validates :phone, length: { maximum: 11, message: "maximum is 11 characters"}
  end

  def save
    # user = User.find(params[:id])
    item = Item.find(params[:id])
    Order.create(user_id: current_user.id, item_id: item.id)
    Address.create(postal_code: postal_code, area: area, city: city, street: street, building: building, phone: phone)
  end
end