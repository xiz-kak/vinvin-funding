# == Schema Information
#
# Table name: rankings
#
#  id         :integer          not null, primary key
#  active_flg :integer
#  begin_date :datetime
#  end_date   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ranking < ActiveRecord::Base
  has_many :ranking_details

  def hero_project
    hero_prj_id = self.ranking_details.find_by(ranking_type_div: 1).project_id
    Project.find(hero_prj_id)
  end

  def ranked_projects(ranking_type)
    ids = self.ranking_details.where(ranking_type_div: ranking_type).order(:ranked_order).pluck(:project_id)
    Project.find(ids)
  end
end
