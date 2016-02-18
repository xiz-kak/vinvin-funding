class Ranking < ActiveRecord::Base
  has_many :ranking_details

  def hero_project
    hero_prj_id = self.ranking_details.find_by(ranking_type_div: 1).project_id
    Project.find(hero_prj_id)
  end

  def ranked_projects(ranking_type)
    ids = self.ranking_details.where(ranking_type_div: ranking_type).order(:ranking).pluck(:project_id)
    Project.find(ids)
  end
end
