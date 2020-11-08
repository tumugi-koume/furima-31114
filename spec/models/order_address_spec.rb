require 'rails_helper'

RSpec.describe OrderAddress, type: :model do
  describe '購入情報の保存' do
    before do
      @order_address = FactoryBot.build(:order_address)
    end

    it '全ての値が正しく入力されていれば保存できること' do
    end

    it 'postal_codeが空だと保存できないこと' do
    end

    it 'area_idが空だと保存できないこと' do
    end

    it 'cityが空だと保存できないこと' do
    end

    it 'streetが空だと保存できないこと' do
    end

    it 'phoneが空だと保存できないこと' do
    end

    it 'user_idが空だと保存できないこと' do
    end

    it 'item_idが空だと保存できないこと' do
    end

    it 'postal_codeに-（ハイフン）が入っていないと保存されないこと' do
    end

    it 'postal_codeが数字でないと保存されないこと' do
    end

    it 'postal_codeが「3桁の数字-（ハイフン）4桁の数字」の形でないと保存できないこと' do
    end

    it 'area_idが0だと保存できないこと' do
    end

    it 'phoneに-（ハイフン）が入っていると保存できないこと' do
    end

    it 'phoneが12桁以上だと保存できないこと' do
    end

    it 'userが紐づいていないと保存できないこと' do
    end

    it 'itemが紐づいていないと保存できないこと' do
    end
  end
end
