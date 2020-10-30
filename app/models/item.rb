class Item < ApplicationRecord
  belongs_to :user
  has_one :order

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status

  with_options presence :true do
    validates :name
    validates :text
    validates :category
    validates :status
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :status_id
  end

end
