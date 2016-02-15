class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :project_id
      t.column :report_datetime, 'timestamp with time zone'
      t.integer :draft_flg

      t.timestamps null: false
    end
  end
end
