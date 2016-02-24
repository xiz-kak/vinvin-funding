class RemoveColFromLanguages < ActiveRecord::Migration
  def change
    remove_column :languages, :facebook_locale
  end
end
