class CreateFundings < ActiveRecord::Migration
  def change
    create_table :fundings do |t|
      t.integer :project_id
      t.integer :reward_id
      t.integer :backer_user_id
      t.column :fund_datetime, 'timestamp with time zone'
      t.decimal :fund_amount, precision: 10, scale: 2
      t.decimal :shipping_rate, precision: 10, scale: 2
      t.decimal :total_amount, precision: 10, scale: 2
      t.integer :payment_method_div
      t.integer :payment_vendor_id
      t.string :shipping_first_name
      t.string :shipping_last_name
      t.string :shipping_tel
      t.integer :shipping_nation_id
      t.string :shipping_zip_code
      t.string :shipping_address1
      t.string :shipping_address2
      t.string :shipping_address3
      t.string :shipping_address4

      t.timestamps null: false
    end
  end
end
