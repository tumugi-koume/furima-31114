class Item < ApplicationRecord
  belongs_to :user
  has_one :order

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :delivery_charge
  belongs_to_active_hash :area
  belongs_to_active_hash :ship_date

  with_options presence :true do
    validates :name
    validates :text
    validates :category
    validates :status
    validates :delivery_charge
    validates :area
    validates :ship_date
    validates :price
    validates :user
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :status_id
    validates :delivery_charge_id
    validates :area_id
    validates :ship_date_id
  end

end
