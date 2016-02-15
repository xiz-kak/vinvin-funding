class AddNondeviseColsToUser < ActiveRecord::Migration
  def change
    add_column :users, :user_cd, :string
    add_column :users, :uid, :integer, limit: 8
    add_column :users, :provider, :string
    add_column :users, :password, :string
    add_column :users, :user_first_name, :string
    add_column :users, :user_last_name, :string
    add_column :users, :image_path, :string
    add_column :users, :language_id, :integer
    add_column :users, :email, :string
    add_column :users, :tel, :string
    add_column :users, :nation_id, :integer
    add_column :users, :zip_code, :string
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :address3, :string
    add_column :users, :address4, :string
    add_column :users, :twitter_user_name, :string
    add_column :users, :facebook_user_name, :string
    add_column :users, :url1, :string
    add_column :users, :url2, :string
    add_column :users, :url3, :string
    add_column :users, :birth_date, :date
    add_column :users, :birth_date_pub_div, :integer
    add_column :users, :gender_div, :integer
    add_column :users, :gender_pub_div, :integer
    add_column :users, :self_description, :text
    add_column :users, :status_div, :integer
    add_column :users, :withdraw_reason_div, :integer
    add_column :users, :withdraw_reason_detail, :text
    add_column :users, :news_letter_subscribe_flg, :integer
    add_column :users, :report_notify_flg, :integer
    add_column :users, :message_notify_flg, :integer
    add_column :users, :comment_notify_flg, :integer
    add_column :users, :member_from, 'timestamp with time zone'
    add_column :users, :blacklisted_flg, :integer
    add_column :users, :blacklisted_comment, :text
    add_index :users, :email,                unique: true
  end
end
