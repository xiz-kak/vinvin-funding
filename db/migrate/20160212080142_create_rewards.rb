class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.integer :project_id
      t.integer :sort_order
      t.decimal :price, precision:10, scale:2
      t.integer :estimated_delivery_year
      t.integer :estimated_delivery_month
      t.integer :estimated_delivery_detail_div
      t.integer :ships_to_div
      t.integer :max_count
      t.integer :status_div
      t.column :applied_datetime, 'timestamp with time zone'
      t.column :approved_datetime, 'timestamp with time zone'
      t.integer :approver_staff_id
      t.column :begin_datetime, 'timestamp with time zone'

      t.timestamps null: false
    end
  end
end
