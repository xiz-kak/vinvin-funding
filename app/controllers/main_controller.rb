class MainController < ApplicationController
  def index
    active_ranking = Ranking.find_by(active_flg: 1)

    @hero_project = active_ranking.hero_project
    @rcm_projects = active_ranking.ranked_projects(2)
    @fav_projects = active_ranking.ranked_projects(3)
    @pld_projects = active_ranking.ranked_projects(4)
    @rtn_projects = active_ranking.ranked_projects(5)
    @new_projects = active_ranking.ranked_projects(6)
    @suc_projects = active_ranking.ranked_projects(7)
  end
end
