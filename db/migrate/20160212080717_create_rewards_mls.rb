class CreateRewardsMls < ActiveRecord::Migration
  def change
    create_table :rewards_mls do |t|
      t.integer :reward_id
      t.integer :language_id
      t.string :title
      t.string :image_path
      t.text :description

      t.timestamps null: false
    end
  end
end
