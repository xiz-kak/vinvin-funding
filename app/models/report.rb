# == Schema Information
#
# Table name: reports
#
#  id              :integer          not null, primary key
#  project_id      :integer
#  report_datetime :datetime
#  draft_flg       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Report < ActiveRecord::Base
  has_many :reports_mls

  belongs_to :project

  def ml(locale)
    self.reports_mls.localed(self.project.locale_for_view(locale))
  end
end
