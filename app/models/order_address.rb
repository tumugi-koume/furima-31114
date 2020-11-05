class OrderAddress
  include ActiveModel::Model
  attr_accessor :user, :item, :postal_code, :area, :city, :street, :building, :phone
end