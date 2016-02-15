class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :project_id
      t.integer :parent_comment_id
      t.integer :comment_user_id
      t.column :comment_datetime, 'timestamp with time zone'
      t.text :comment_body

      t.timestamps null: false
    end
  end
end
