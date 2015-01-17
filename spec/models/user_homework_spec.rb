require 'rails_helper'

RSpec.describe UserHomework, :type => :model do
  describe 'Create' do
    context 'expect error' do
      it 'homework_id is null' do
        user = FactoryGirl.create(:truthy_user)
        user_homework = UserHomework.new(:user_id => user.id)
        expect(user_homework).not_to be_valid
      end

      it 'user_id is null' do
        homework = FactoryGirl.create(:homework)
        user_homework = UserHomework.new(:homework_id => homework.id)
        expect(user_homework).not_to be_valid
      end
    end

    it 'expect normal' do
      user = FactoryGirl.create(:truthy_user)
      homework = FactoryGirl.create(:homework)
      user_homework = UserHomework.new(:user_id => user.id, :homework_id => homework.id)
      expect(user_homework.save).to be_truthy
    end
  end
end
