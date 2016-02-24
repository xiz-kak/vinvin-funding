# == Schema Information
#
# Table name: users
#
#  id                        :integer          not null, primary key
#  sign_in_count             :integer          default(0), not null
#  current_sign_in_at        :datetime
#  last_sign_in_at           :datetime
#  current_sign_in_ip        :inet
#  last_sign_in_ip           :inet
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  user_cd                   :string
#  uid                       :integer
#  provider                  :string
#  password                  :string
#  first_name                :string
#  last_name                 :string
#  image_path                :string
#  language_id               :integer
#  email                     :string
#  tel                       :string
#  nation_id                 :integer
#  zip_code                  :string
#  address1                  :string
#  address2                  :string
#  address3                  :string
#  address4                  :string
#  twitter_user_name         :string
#  facebook_user_name        :string
#  url1                      :string
#  url2                      :string
#  url3                      :string
#  birth_date                :date
#  birth_date_pub_div        :integer
#  gender_div                :integer
#  gender_pub_div            :integer
#  self_description          :text
#  status_div                :integer
#  withdraw_reason_div       :integer
#  withdraw_reason_detail    :text
#  news_letter_subscribe_flg :integer
#  report_notify_flg         :integer
#  message_notify_flg        :integer
#  comment_notify_flg        :integer
#  member_from               :datetime
#  blacklisted_flg           :integer
#  blacklisted_comment       :text
#  name                      :string
#  middle_name               :string
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  devise :trackable, :omniauthable

  TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/

  def social_profile(provider)
    social_profiles.select{ |sp| sp.provider == provider.to_s }.first
  end

  def email_verified?
    self.email && self.email !~ TEMP_EMAIL_REGEX
  end

  def full_name
    return self.name if self.name
    name = self.first_name
    name += ' ' + self.middle_name if self.middle_name
    name += ' ' + self.last_name
    name
  end

  class << self
    def current_user=(user)
      Thread.current[:current_user] = user
    end

    def current_user
      Thread.current[:current_user]
    end
  end

  # def self.new_with_session(params, session)
  #   super.tap do |user|
  #     if data = session['devise.facebook_data'] && session['devise.facebook_data']['extra']['raw_info']
  #       user.email = data['email']
  #     end
  #   end
  # end

  # def self.find_for_facebook_oauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.name = auth.info.name
  #     user.first_name = auth.info.first_name
  #     user.middle_name = auth.info.middle_name
  #     user.last_name = auth.info.last_name
  #     user.email = auth.info.email
  #     user.password = Devise.friendly_token[0,20]
  #     user.image_path = auth.info.image
  #     user.language_id = Language.locale_to_lang(auth.info.locale)
  #     user.gender_div = Division.gender_name_to_val(auth.info.gender)
  #   end
  # end

  # def self.find_for_twitter_oauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.name = auth.info.nickname
  #     user.first_name = auth.info.nickname
  #     user.middle_name = ''
  #     user.last_name = ''
  #     user.email = "#{auth.provider}-#{auth.uid}@example.com"
  #     user.password = Devise.friendly_token[0,20]
  #     user.image_path = auth.info.image
  #     # user.language_id = 1
  #   end
  # end
end
