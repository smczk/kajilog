class Homework < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end
end
