require 'rails_helper'
  describe User do
    describe '#create' do

      #1 全部入力があれば、ログインできる。
      it "is valid with a nickname, name, prefecture_id, 
      area_id, homepoint_id, email, 
      password, password_confirmation" do
        user = build(:user)
        expect(user).to be_valid
      end
      #2 nicknameがからの場合不可
      it "is invalid without a nickname" do
        user = build(:user, nickname: "")
        user.valid?
        expect(user.errors[:nickname]).to include("can't be blank")
      end
      #3 nameがからの場合不可
      it "is invalid without a name" do
        user = build(:user, name: "")
        user.valid?
        expect(user.errors[:name])
      end
      #4 prefecture_idがからの場合不可
      it "is invalid without a prefecture_id" do
        user = build(:user, prefecture_id: "")
        user.valid?
        expect(user.errors[:prefecture_id])
      end
      #5 area_idがからの場合不可
      it "is invalid without a area_id" do
        user = build(:user, area_id: "")
        user.valid?
        expect(user.errors[:area_id])
      end

    end
  end