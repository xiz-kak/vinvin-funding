class RenameActiveFlgToRankings < ActiveRecord::Migration
  def change
    rename_column :rankings, :acrive_flg, :active_flg
  end
end
