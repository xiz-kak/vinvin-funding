class CreateCategoriesMls < ActiveRecord::Migration
  def change
    create_table :categories_mls do |t|
      t.integer :category_id
      t.integer :language_id
      t.string :name

      t.timestamps null: false
    end
  end
end
