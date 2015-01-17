class CreateUserHomeworks < ActiveRecord::Migration
  def change
    create_table :user_homeworks do |t|
      t.references :user, index: true
      t.references :homework, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_homeworks, :users
    add_foreign_key :user_homeworks, :homeworks
  end
end
