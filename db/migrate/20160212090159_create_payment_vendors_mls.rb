class CreatePaymentVendorsMls < ActiveRecord::Migration
  def change
    create_table :payment_vendors_mls do |t|
      t.integer :payment_vendor_id
      t.integer :language_id
      t.string :name

      t.timestamps null: false
    end
  end
end
