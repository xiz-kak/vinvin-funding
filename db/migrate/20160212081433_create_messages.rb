class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :project_id
      t.integer :backer_user_id
      t.string :title
      t.column :begin_datetime, 'timestamp with time zone'

      t.timestamps null: false
    end
  end
end
