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
