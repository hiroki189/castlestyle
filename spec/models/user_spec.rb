require 'rails_helper'

describe User do
  
  before do
    I18n.locale = :en
  end

  describe '#create' do

    it "is valid with a name, email, password, password_confirmation" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "is invalid without a name" do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
     end
 
     it "is invalid without a email" do
       user = build(:user, email: "")
       user.valid?
       expect(user.errors[:email]).to include("can't be blank")
     end

     it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
     end

     it "is invalid without a password_confimation" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
     end

     it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
     end

     it "is invalid a password that has more than 6 characters" do
      user = build(:user, password: "000000")
      user.valid?
      expect(user).to be_valid
     end

     it "is invalid with a password which has less than 5 characters" do
      user = build(:user, password: "11111")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
     end

  end
end