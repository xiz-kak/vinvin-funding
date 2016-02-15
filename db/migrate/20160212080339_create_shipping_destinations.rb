class CreateShippingDestinations < ActiveRecord::Migration
  def change
    create_table :shipping_destinations do |t|
      t.integer :reward_id
      t.integer :sort_order
      t.integer :nation_id
      t.decimal :shipping_rate, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
