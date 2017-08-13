require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    before do
     @user = User.create(email: "teste@vitor.com",
     password: "12345678", password_confirmation: "12345678",
     first_name: "Vit", last_name: "Soprano")
    end

    it "create user ok" do
      expect(@user).to be_valid
    end

    it "create user fail without first and last_name" do
      @user.last_name = nil
      @user.first_name = nil
      expect(@user).to_not be_valid
    end
  end  
end
