module ModelUtil
  extend ActiveSupport::Concern

  class_methods do
     @@langs = ['en', 'vi', 'ja']

    def locale_to_lang(locale)
      language_id = 1
      if locale
        language_id = @@langs.index(locale) + 1
      end
      language_id
    end

    def lang_to_locale(lang_id)
      @@langs[lang_id-1]
    end
  end
end
