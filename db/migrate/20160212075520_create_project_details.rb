class CreateProjectDetails < ActiveRecord::Migration
  def change
    create_table :project_details do |t|
      t.integer :project_id
      t.integer :language_id
      t.integer :sort_order
      t.string :title
      t.text :description
      t.string :image_path

      t.timestamps null: false
    end
  end
end
