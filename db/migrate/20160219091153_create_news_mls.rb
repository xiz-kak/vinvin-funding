class CreateNewsMls < ActiveRecord::Migration
  def change
    create_table :news_mls do |t|
      t.integer :new_id
      t.integer :language_id
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
