module OAuthService
  class GetOAuthUser
    require 'o_auth/o_auth_policy'

    def self.call(auth)
      # Fine social_profile by auth. If not exist, create new.
      profile = SocialProfile.find_for_oauth(auth)
      # Find user.
      # Primary: Current user
      # Secondary: User associated with socia_profile object
      user = current_or_profile_user(profile)
      unless user
        # Thirdly: Find user by auth.email
        # If not exists: Create new user
        user ||= find_or_create_new_user(auth)
      end
      associate_user_with_profile!(user, profile)
      user
    end

    private

      class << self

        def current_or_profile_user(profile)
          user = User.current_user.presence || profile.user
        end

        # Find user. If user not found, create new user.
        # Set temporary email. TEMP_EMAIL_PREFIX indicates the temporariness.
        def find_or_create_new_user(auth)
          # Query for user if verified email is provided
          email = verified_email_from_oauth(auth)
          user = User.where(email: email).first if email
          if user.nil?
            provider = auth["provider"]
            policy   = OAuthPolicy.get_policy(provider, auth)
            temp_email = "#{User::TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com"
            user = User.new(
              name: auth.info.name,
              password: Devise.friendly_token[0,20],
              email: email ? email : temp_email,
              image_path: policy.image_path,
              language_id: policy.language_id,
              gender_div: policy.gender_div
            )
            # email確認メール送信を延期するために一時的にemail確認済みの状態にする。
            # user.skip_confirmation!
            # email仮をデータベースに保存するため、validationを一時的に無効化。
            # user.save(validate: false)
            user.save
            user
          end
        end

        def verified_email_from_oauth(auth)
          auth.info.email if auth.info.email && (auth.info.verified || auth.info.verified_email)
        end

        # Associate social_profile with user
        def associate_user_with_profile!(user, profile)
          profile.update!(user_id: user.id) if profile.user != user
          if profile.provider.to_s.capitalize == 'Facebook'
            user.update!(facebook_user_name: profile.username)
          elsif profile.provider.to_s.capitalize == 'Twitter'
            user.update!(twitter_user_name: profile.username)
          end
        end
      end
    end
end
