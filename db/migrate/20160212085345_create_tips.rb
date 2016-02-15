class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.column :tips_datetime, 'timestamp with time zone'
      t.integer :receiver_user_id
      t.text :body
      t.integer :read_flg

      t.timestamps null: false
    end
  end
end
