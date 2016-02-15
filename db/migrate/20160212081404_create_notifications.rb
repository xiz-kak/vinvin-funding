class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :project_id
      t.column :notify_datetime, 'timestamp with time zone'
      t.string :title
      t.text :body
      t.integer :read_flg

      t.timestamps null: false
    end
  end
end
