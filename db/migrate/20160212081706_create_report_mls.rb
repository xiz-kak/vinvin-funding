class CreateReportMls < ActiveRecord::Migration
  def change
    create_table :report_mls do |t|
      t.integer :report_id
      t.integer :language_id
      t.string :title
      t.string :image_path
      t.text :body

      t.timestamps null: false
    end
  end
end
