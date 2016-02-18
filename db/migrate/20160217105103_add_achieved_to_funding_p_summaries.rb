class AddAchievedToFundingPSummaries < ActiveRecord::Migration
  def change
    add_column :funding_p_summaries, :goal_amount, :decimal, precision: 10, scale: 2
    add_column :funding_p_summaries, :achieved, :float
  end
end
