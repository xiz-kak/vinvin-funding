class CreateRankingDetails < ActiveRecord::Migration
  def change
    create_table :ranking_details do |t|
      t.integer :ranking_id
      t.integer :ranking_type_div
      t.integer :ranking
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
