class AddUsernameToSocialProfiles < ActiveRecord::Migration
  def change
    add_column :social_profiles, :username, :string
  end
end
