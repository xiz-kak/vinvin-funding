class New < ActiveRecord::Base
  has_many :news_mls

  # include ModelUtil

  # scope :sorted_localed, -> (locale){where(language_id: locale_to_lang(locale)).order(:news_datetime)}
  scope :sorted, -> { order(news_datetime: :DESC)}

  def ml(locale)
    self.news_mls.localed(locale)
  end
end
