require 'rails_helper'

describe User do
  describe '#create' do

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

  end
end