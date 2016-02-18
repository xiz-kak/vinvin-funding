module MlCommon
  extend ActiveSupport::Concern
  include ModelUtil

  included do
  end

  class_methods do
    def localed(locale)
      # language_id = 1
      # if locale
      #   langs = ['en', 'vi', 'ja']
      #   language_id = langs.index(locale) + 1
      # end
      find_by(language_id: locale_to_lang(locale))
    end
  end
end
