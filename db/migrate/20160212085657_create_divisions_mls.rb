class CreateDivisionsMls < ActiveRecord::Migration
  def change
    create_table :divisions_mls do |t|
      t.integer :division_id
      t.integer :language_id
      t.string :name

      t.timestamps null: false
    end
  end
end
