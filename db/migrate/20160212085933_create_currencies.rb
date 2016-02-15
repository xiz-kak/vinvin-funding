class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.integer :sort_order
      t.string :code
      t.string :symbol

      t.timestamps null: false
    end
  end
end
