class RenameRankingToRankingDetails < ActiveRecord::Migration
  def change
    rename_column :ranking_details, :ranking, :ranked_order
  end
end
