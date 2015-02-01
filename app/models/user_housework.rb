class UserHousework < ActiveRecord::Base
  belongs_to :user
  belongs_to :housework

  validates :user_id, :housework_id, presence: true

  def self.latest5(user)
    UserHousework.where(user_id: user).reverse.slice(0..4)
  end

  def self.user_houseworks_with_counts(user)
    UserHousework.where(user_id: user).joins(:housework)
                                              .group('houseworks.name')
                                              .order('count_housework_id desc')
                                              .count('housework_id')
  end
end
