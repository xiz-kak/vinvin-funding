class RemoveColsFromRankings < ActiveRecord::Migration
  def change
    remove_column :rankings, :hero_project_id
    remove_column :rankings, :recommend_1_project_id
    remove_column :rankings, :recommend_2_project_id
    remove_column :rankings, :recommend_3_project_id
    remove_column :rankings, :recommend_4_project_id
    remove_column :rankings, :recommend_5_project_id
    remove_column :rankings, :recommend_6_project_id
    remove_column :rankings, :recommend_7_project_id
    remove_column :rankings, :recommend_8_project_id
    remove_column :rankings, :recommend_9_project_id
    remove_column :rankings, :recommend_10_project_id
    remove_column :rankings, :favorite_1_project_id
    remove_column :rankings, :favorite_2_project_id
    remove_column :rankings, :favorite_3_project_id
    remove_column :rankings, :favorite_4_project_id
    remove_column :rankings, :favorite_5_project_id
    remove_column :rankings, :pledged_1_project_id
    remove_column :rankings, :pledged_2_project_id
    remove_column :rankings, :pledged_3_project_id
    remove_column :rankings, :pledged_4_project_id
    remove_column :rankings, :pledged_5_project_id
    remove_column :rankings, :reward_1_reward_id
    remove_column :rankings, :reward_2_reward_id
    remove_column :rankings, :reward_3_reward_id
    remove_column :rankings, :reward_4_reward_id
    remove_column :rankings, :reward_5_reward_id
    remove_column :rankings, :new_1_project_id
    remove_column :rankings, :new_2_project_id
    remove_column :rankings, :new_3_project_id
    remove_column :rankings, :new_4_project_id
    remove_column :rankings, :new_5_project_id
    remove_column :rankings, :success_1_project_id
    remove_column :rankings, :success_2_project_id
    remove_column :rankings, :success_3_project_id
    remove_column :rankings, :success_4_project_id
    remove_column :rankings, :success_5_project_id
  end
end
