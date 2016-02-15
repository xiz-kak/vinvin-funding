class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.integer :acrive_flg
      t.column :begin_date, 'timestamp with time zone'
      t.column :end_date, 'timestamp with time zone'
      t.integer :hero_project_id
      t.integer :recommend_1_project_id
      t.integer :recommend_2_project_id
      t.integer :recommend_3_project_id
      t.integer :recommend_4_project_id
      t.integer :recommend_5_project_id
      t.integer :recommend_6_project_id
      t.integer :recommend_7_project_id
      t.integer :recommend_8_project_id
      t.integer :recommend_9_project_id
      t.integer :recommend_10_project_id
      t.integer :favorite_1_project_id
      t.integer :favorite_2_project_id
      t.integer :favorite_3_project_id
      t.integer :favorite_4_project_id
      t.integer :favorite_5_project_id
      t.integer :pledged_1_project_id
      t.integer :pledged_2_project_id
      t.integer :pledged_3_project_id
      t.integer :pledged_4_project_id
      t.integer :pledged_5_project_id
      t.integer :reward_1_reward_id
      t.integer :reward_2_reward_id
      t.integer :reward_3_reward_id
      t.integer :reward_4_reward_id
      t.integer :reward_5_reward_id
      t.integer :new_1_project_id
      t.integer :new_2_project_id
      t.integer :new_3_project_id
      t.integer :new_4_project_id
      t.integer :new_5_project_id
      t.integer :success_1_project_id
      t.integer :success_2_project_id
      t.integer :success_3_project_id
      t.integer :success_4_project_id
      t.integer :success_5_project_id

      t.timestamps null: false
    end
  end
end
