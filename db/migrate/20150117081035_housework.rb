class Housework < ActiveRecord::Migration
  def change
    create_table :houseworks do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end
end
