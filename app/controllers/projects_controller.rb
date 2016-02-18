class ProjectsController < ApplicationController
  def index
    @list_title_t_arg = 'projects.list'
    @projects = Project.index_list
  end

  def detail
    @project = Project.find(params[:id])
  end

  def creator
  end

  def open
    @list_title_t_arg = 'projects.open'
    @projects = Project.open_list

    render 'index'
  end

  def last_minute
    @list_title_t_arg = 'projects.last_minute'
    @projects = Project.last_minute_list

    render 'index'
  end

  def new
    @list_title_t_arg = 'projects.new'
    @projects = Project.new_list

    render 'index'
  end

  def pledged
    @list_title_t_arg = 'projects.pledged'
    @projects = Project.pledged_list

    render 'index'
  end

  def final_push
    @list_title_t_arg = 'projects.final_push'
    @projects = Project.final_push_list

    render 'index'
  end

  def category
    @list_title_t_arg = 'projects.category_arg'
    @ctgr_name = Category.n(params[:id], params[:locale])
    @projects = Project.list_by_category(params[:id])

    render 'index'
  end
end
