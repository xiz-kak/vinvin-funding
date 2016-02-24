class RenameColsToUsers < ActiveRecord::Migration
  def change
    rename_column :users, :user_first_name, :first_name
    rename_column :users, :user_last_name, :last_name
  end
end
