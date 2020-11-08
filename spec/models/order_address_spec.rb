require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  describe '購入情報の保存' do
    before do
      @order_address = FactoryBot.build(:order_address)
    end

    it '全ての値が正しく入力されていれば保存できること' do
      expect(@order_address).to be_valid
    end

    it 'postal_codeが空だと保存できないこと' do
      @order_address.postal_code = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Postal is invalid. Include hyphen(-)")
    end

    it 'area_idが空だと保存できないこと' do
      @order_address.area_id = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Area id can't be blank")
    end

    it 'cityが空だと保存できないこと' do
      @order_address.city = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("City can't be blank")
    end

    it 'streetが空だと保存できないこと' do
      @order_address.street = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Street can't be blank")
    end

    it 'phoneが空だと保存できないこと' do
      @order_address.phone = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Phone can't be blank")
    end

    it 'user_idが空だと保存できないこと' do
      @order_address.user_id = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("User id can't be blank")
    end

    it 'item_idが空だと保存できないこと' do
      @order_address.item_id = nil
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Item id can't be blank")
    end

    it 'postal_codeに-（ハイフン）が入っていないと保存されないこと' do
      @order_address.postal_code = '1234567'
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Postal is invalid. Include hyphen(-)")
    end

    it 'postal_codeが数字でないと保存されないこと' do
      @order_address.postal_code = 'abc-defg'
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Postal is invalid. Include hyphen(-)")
    end

    it 'postal_codeが「3桁の数字-（ハイフン）4桁の数字」の形でないと保存できないこと' do
      @order_address.postal_code = '1234-567'
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Postal is invalid. Include hyphen(-)")
    end

    it 'area_idが0だと保存できないこと' do
      @order_address.area_id = 0
      @order_address.valid?
      expect(@order_address.errors.full_messages).to include("Area id can't be blank")
    end

    it 'phoneに-（ハイフン）が入っていると保存できないこと' do
    end

    it 'phoneが12桁以上だと保存できないこと' do
    end
  end
end
