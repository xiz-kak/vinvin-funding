class CreateCurrenciesMls < ActiveRecord::Migration
  def change
    create_table :currencies_mls do |t|
      t.integer :currency_id
      t.integer :language_id
      t.string :name

      t.timestamps null: false
    end
  end
end
