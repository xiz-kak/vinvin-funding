# == Schema Information
#
# Table name: languages
#
#  id         :integer          not null, primary key
#  code       :string
#  name       :string
#  name_en    :string
#  sort_order :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Language < ActiveRecord::Base
  def self.locale_to_lang(locale)
    language_id = 1
    if locale
      language_id = Language.find_by(code: locale.to_s[0,2]).id
    end
    language_id
  end

  def self.lang_to_locale(lang_id)
    Language.find(lang_id).code
  end

  # def self.facebook_locale_to_lang(facebook_locale)
  #   return 1 if facebook_locale.blank?
  #   self.locale_to_lang(facebook_locale[0,2])
  # end
end
