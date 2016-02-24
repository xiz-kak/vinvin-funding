class AddUserColsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :middle_name, :string
    add_column :languages, :facebook_locale, :string
  end
end
