class UserHousework < ActiveRecord::Base
  belongs_to :user
  belongs_to :housework

  validates :user_id, :housework_id, presence: true
end
