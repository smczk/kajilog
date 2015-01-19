class CreateUserHouseworks < ActiveRecord::Migration
  def change
    create_table :user_houseworks do |t|
      t.references :user, index: true
      t.references :housework, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_houseworks, :users
    add_foreign_key :user_houseworks, :houseworks
  end
end
