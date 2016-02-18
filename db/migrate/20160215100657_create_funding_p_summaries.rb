class CreateFundingPSummaries < ActiveRecord::Migration
  def change
    create_table :funding_p_summaries do |t|
      t.integer :project_id
      t.integer :funded_count
      t.integer :backer_count
      t.decimal :funded_amount, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
