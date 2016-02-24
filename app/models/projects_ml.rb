# == Schema Information
#
# Table name: projects_mls
#
#  id                  :integer          not null, primary key
#  project_id          :integer
#  language_id         :integer
#  title               :string
#  image_path          :string
#  creator_name        :string
#  creator_image_path  :string
#  creator_description :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class ProjectsMl < ActiveRecord::Base
  belongs_to :project

  include MlCommon
end
