class CreatePaymentVendors < ActiveRecord::Migration
  def change
    create_table :payment_vendors do |t|
      t.integer :sort_order
      t.string :logo_image_path

      t.timestamps null: false
    end
  end
end
