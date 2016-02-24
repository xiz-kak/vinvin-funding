# == Schema Information
#
# Table name: social_profiles
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  provider    :string
#  uid         :string
#  name        :string
#  nickname    :string
#  email       :string
#  url         :string
#  image_path  :string
#  description :string
#  credentials :text
#  raw_info    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  username    :string
#
# Indexes
#
#  index_social_profiles_on_provider_and_uid  (provider,uid) UNIQUE
#  index_social_profiles_on_user_id           (user_id)
#
# Foreign Keys
#
#  fk_rails_d33f8c64b4  (user_id => users.id)
#

class SocialProfile < ActiveRecord::Base
  require 'o_auth/o_auth_policy'
  belongs_to :user
  validates_uniqueness_of :uid, scope: :provider

  def self.find_for_oauth(auth)
    profile = find_or_create_by(uid: auth.uid, provider: auth.provider)
    profile.save_oauth_data!(auth)
    profile
  end

  def save_oauth_data!(auth)
    return unless valid_oauth?(auth)

    provider = auth["provider"]
    policy   = OAuthPolicy.get_policy(provider, auth)

    self.update_attributes(name:        policy.name,
                           nickname:    policy.nickname,
                           email:       policy.email,
                           url:         policy.url,
                           image_path:  policy.image_path,
                           description: policy.description,
                           credentials: policy.credentials,
                           raw_info:    policy.raw_info,
                           username:    policy.username )
  end

  private

    def valid_oauth?(auth)
      (self.provider.to_s == auth['provider'].to_s) && (self.uid == auth['uid'])
    end
end
