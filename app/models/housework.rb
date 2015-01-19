class Housework < ActiveRecord::Base
  has_many :user_houseworks
  has_many :users, :through => :user_houseworks
end
