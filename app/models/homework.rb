class Homework < ActiveRecord::Base
  has_many :user_homeworks
  has_many :users, :through => :user_homeworks
end
