class ChangeColumnToUserHousework < ActiveRecord::Migration
  def change
    change_column :user_houseworks, :user_id, :integer, null: false
    change_column :user_houseworks, :housework_id, :integer, null: false
  end
end
