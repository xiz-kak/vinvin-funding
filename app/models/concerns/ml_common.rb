module MlCommon
  extend ActiveSupport::Concern

  included do
  end

  class_methods do
    def localed(locale)
      find_by(language_id: Language.locale_to_lang(locale))
    end
  end
end
