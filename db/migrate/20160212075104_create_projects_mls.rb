class CreateProjectsMls < ActiveRecord::Migration
  def change
    create_table :projects_mls do |t|
      t.integer :project_id
      t.integer :language_id
      t.string :title
      t.string :image_path
      t.string :creator_name
      t.string :creator_image_path
      t.text :creator_description

      t.timestamps null: false
    end
  end
end
