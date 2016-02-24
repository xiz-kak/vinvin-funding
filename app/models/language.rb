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
