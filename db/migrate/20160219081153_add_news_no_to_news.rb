class AddNewsNoToNews < ActiveRecord::Migration
  def change
    add_column :news, :article_no, :integer
  end
end
