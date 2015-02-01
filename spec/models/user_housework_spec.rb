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

  describe 'Methods latest5' do
    context 'register 6 user_houseworks' do
      it 'expected normal' do
        user = FactoryGirl.create(:truthy_user)
        housework = FactoryGirl.create(:housework)
        6.times do
          user_housework = UserHousework.new(:user_id => user.id, :housework_id => housework.id).save
        end
        size = UserHousework.latest5(1).size
        expect(size).to eq 5
      end
    end
  end

  describe 'Methods user_houseworks_with_counts' do
    context 'register 6 user_houseworks' do
      it 'expected normal' do
        user = FactoryGirl.create(:truthy_user)
        housework = FactoryGirl.create(:housework)
        6.times do
          user_housework = UserHousework.new(:user_id => user.id, :housework_id => housework.id).save
        end
        user_housework_with_count = UserHousework.user_houseworks_with_counts(1).to_a
        expect(user_housework_with_count[0][1]).to eq 6
      end
    end
  end
end
