class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :user_homeworks
  has_many :homeworks, :through => :user_homeworks

  validates :password, length: { minimum: 8 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
end
