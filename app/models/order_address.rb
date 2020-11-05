class OrderAddress
  include ActiveModel::Model
  attr_accessor :user, :item, :postal_code, :area, :city, :street, :building, :phone

  with_options presence: true do
    validates :user
    validates :item 
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :area, numericality: { other_than: 0, message: "can't be blank"}
    validates :city
    validates :street
    validates :phone, length: { maximum: 11, message: "maximum is 11 characters"}
  end
end