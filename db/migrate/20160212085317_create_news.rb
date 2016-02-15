class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.column :news_datetime, 'timestamp with time zone'
      t.integer :language_id
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
