require 'rails_helper'

describe User do
  describe '#create' do

    it "is valid with a name, email, password, password_confirmation" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "is invalid without a name" do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
     end
 
     it "is invalid without a email" do
       user = build(:user, email: "")
       user.valid?
       expect(user.errors[:email]).to include("を入力してください")
     end

     it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
     end

     it "is invalid without a password_confimation" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とPasswordの入力が一致しません")
     end

     

  end
end