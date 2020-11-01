class Item < ApplicationRecord
  belongs_to :user
  has_one :order

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :delivery_charge

  with_options presence :true do
    validates :name
    validates :text
    validates :category
    validates :status
    validates :delivery_charge
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :status_id
    validates :delivery_charge_id
  end

end
