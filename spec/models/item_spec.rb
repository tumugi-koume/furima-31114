require 'rails_helper'
describe Item do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品の出品' do
    context '商品情報が保存できる時' do
      it 'name、text、category_id、status_id、delivery_charge_id、area_id、ship_date_id、priceがあれば保存できる' do
        expect(@item).to be_valid
      end
    end
    context '商品情報が保存できない時' do
      it 'nameがないと保存できない' do
        @item.name = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end

      it 'textがないと保存できない' do
        @item.text = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Text can't be blank")
      end

      it 'category_idがないと保存できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category id")
      end

      it 'status_idがないと保存できない' do
        @item.status_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Status id")
      end

      it 'delivery_charge_idがないと保存できない' do
        @item.delivery_charge_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery charge id")
      end

      it 'area_idがないと保存できない' do
        @item.area_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Area id")
      end

      it 'ship_date_idがないと保存できない' do
        @item.ship_date_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Ship date id")
      end

      it 'priceがないと保存できない' do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end

      it 'imageがないと保存できない' do
        @item.image = ""
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end

      it 'userが紐付いてないと保存できない' do
        @item.user = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("User must exist")
      end

      it 'priceが300~9999999でないと保存できない' do
        @item.price = "10"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price A")
      end

      it 'priceが半角数字でないと保存できない' do
        @item.price = "１２３４"
        @item.valid?
        expect(@item.errors.full_messages).to include("Price B")
      end

    end
  end
end
