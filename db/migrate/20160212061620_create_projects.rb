class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :type_div
      t.integer :prime_language_id
      t.string :multi_language_ids
      t.integer :category_id
      t.decimal :goal_amount, precision: 10, scale: 2
      t.integer :currency_id
      t.integer :applied_duration_months
      t.integer :applied_duration_days
      t.column :applied_due_date, 'timestamp with time zone'
      t.integer :creator_user_id
      t.string :twitter_user_name
      t.string :facebook_user_name
      t.string :url1
      t.string :url2
      t.string :url3
      t.integer :nation_id
      t.string :region
      t.integer :status_div
      t.integer :closed_status_div
      t.column :applied_datetime, 'timestamp with time zone'
      t.column :approved_datetime, 'timestamp with time zone'
      t.integer :approver_staff_id
      t.column :begin_datetime, 'timestamp with time zone'
      t.column :due_datetime, 'timestamp with time zone'
      t.column :end_datetime, 'timestamp with time zone'
      t.timestamps null: false
    end
  end
end
