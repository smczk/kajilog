require 'rails_helper'

RSpec.describe User, :type => :model do
  describe 'truthy user' do
    it 'create user' do
      @user = FactoryGirl.build(:truthy_user)
      expect(@user.save).to be_truthy
    end 
  end

  describe 'falsey user' do
    it 'create user' do
      @user = FactoryGirl.build(:falsey_user)
      expect(@user.save).to be_falsey
    end 
  end
end
