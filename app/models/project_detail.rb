class ProjectDetail < ActiveRecord::Base
  belongs_to :project

  scope :sorted_localed, -> (locale){where(language_id: Language.locale_to_lang(locale)).order(:sort_order)}
end
