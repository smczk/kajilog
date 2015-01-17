class UserHomework < ActiveRecord::Base
  belongs_to :user
  belongs_to :homework

  validates :user_id, :homework_id, presence: true
end
