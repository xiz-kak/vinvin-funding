class CreateMessageDetails < ActiveRecord::Migration
  def change
    create_table :message_details do |t|
      t.integer :message_id
      t.integer :sender_user_id
      t.column :sent_datetime, 'timestamp with time zone'
      t.text :body
      t.integer :read_flg

      t.timestamps null: false
    end
  end
end
