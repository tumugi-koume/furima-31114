require 'rails_helper'
describe Item do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品の出品' do
    context '商品情報が保存できる時' do
      it 'name、text、category_id、status_id、delivery_charge_id、area_id、ship_date_id、priceがあれば保存できる' do
        
      end
    end

    context '商品情報が保存できない時' do
      it 'nameがないと保存できない' do
      end

      it 'textがないと保存できない' do
      end

      it 'category_idがないと保存できない' do
        
      end

      it 'status_idがないと保存できない' do
        
      end

      it 'delivery_charge_idがないと保存できない' do
        
      end

      it 'area_idがないと保存できない' do
        
      end

      it 'ship_date_idがないと保存できない' do
        
      end

      it 'priceがないと保存できない' do
        
      end

      it 'userが紐付いてないと保存できない' do
        
      end

      it 'priceが300~9999999でないと保存できない' do
        
      end

      it 'priceが半角数字でないと保存できない' do
        
      end

    end
  end
end
