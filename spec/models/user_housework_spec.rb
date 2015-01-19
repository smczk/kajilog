require 'rails_helper'

RSpec.describe UserHousework, :type => :model do
  describe 'Create' do
    context 'expect error' do
      it 'housework_id is null' do
        user = FactoryGirl.create(:truthy_user)
        user_housework = UserHousework.new(:user_id => user.id)
        expect(user_housework).not_to be_valid
      end

      it 'user_id is null' do
        housework = FactoryGirl.create(:housework)
        user_housework = UserHousework.new(:housework_id => housework.id)
        expect(user_housework).not_to be_valid
      end
    end

    it 'expect normal' do
      user = FactoryGirl.create(:truthy_user)
      housework = FactoryGirl.create(:housework)
      user_housework = UserHousework.new(:user_id => user.id, :housework_id => housework.id)
      expect(user_housework.save).to be_truthy
    end
  end
end
