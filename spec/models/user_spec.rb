require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end
    it "全ての情報を入力すると登録できる" do
      expect(@user).to be_valid
    end

    it "staff_idが空では登録できないこと" do
      @user.staff_id = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Staff id can't be blank")
    end

    it "address_numberが空では登録できないこと" do
      @user.address_number = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Address number can't be blank")
    end

    it "cityが空では登録できないこと" do
      @user.city = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("City can't be blank")
    end

    it "first_nameが空では登録できないこと" do
      @user.first_name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("First name can't be blank")
    end

    it "last_nameが空では登録できないこと" do
      @user.last_name = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name can't be blank")
    end

    it "birthdayが空では登録できないこと" do
      @user.birthday = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Birthday can't be blank")
    end

    it "first_name_katakanaが空では登録できないこと" do
      @user.first_name_katakana = nil

      @user.valid?
      expect(@user.errors.full_messages).to include("First name katakana can't be blank")
    end

    it "Last_katakana_nameが空では登録できないこと" do
      @user.last_name_katakana = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name katakana can't be blank")
    end
    it "addressが空では登録できないこと" do
      @user.address = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Address can't be blank")
    end

    it "gender_idが空では登録できないこと" do
      @user.gender_id = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Gender id can't be blank")
    end

    it "address_numberが000-0000の形でなければ登録できない" do
      @user.address_number = "00000"
      @user.valid?
      expect(@user.errors.full_messages).to include("Address number to be valid")
    end

    it 'ユーザー本名は全角での入力が必須である' do
      @user.first_name = "aaaaa"
      @user.valid?
      expect(@user.errors.full_messages).to include("First name is invalid. Input full-width characters.")
    end
    it 'ユーザー本名は全角での入力が必須である' do
      @user.last_name = "aaaaa"
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name is invalid. Input full-width characters.")
    end
    it 'ユーザー名の振り仮名は全角カタカナで入力が必須である' do
      @user.first_name_katakana = "agaggggr"
      @user.valid?
      expect(@user.errors.full_messages).to include("First name katakana 全角カタカナのみで入力して下さい")
    end
    it 'ユーザー名の振り仮名は全角カタカナで入力が必須である' do
      @user.last_name_katakana = "agaggggr"
      @user.valid?
      expect(@user.errors.full_messages).to include("Last name katakana 全角カタカナのみで入力して下さい")
    end
    
  end
end