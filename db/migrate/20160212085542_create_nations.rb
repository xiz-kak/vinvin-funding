class CreateNations < ActiveRecord::Migration
  def change
    create_table :nations do |t|
      t.integer :sort_order
      t.string :name

      t.timestamps null: false
    end
  end
end
