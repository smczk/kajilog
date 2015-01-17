class ChangeColumnToUserHomework < ActiveRecord::Migration
  def change
    change_column :user_homeworks, :user_id, :integer, null: false
    change_column :user_homeworks, :homework_id, :integer, null: false
  end
end
