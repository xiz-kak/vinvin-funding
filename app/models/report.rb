class Report < ActiveRecord::Base
  has_many :reports_mls

  belongs_to :project

  def ml(locale)
    self.reports_mls.localed(self.project.locale_for_view(locale))
  end
end
