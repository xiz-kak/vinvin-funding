class ProjectsMl < ActiveRecord::Base
  belongs_to :project

  include MlCommon
end
