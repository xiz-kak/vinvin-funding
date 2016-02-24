class RemoveColToNews < ActiveRecord::Migration
  def change
    remove_column :news, :language_id
    remove_column :news, :title
    remove_column :news, :body
    remove_column :news, :article_no
  end
end
