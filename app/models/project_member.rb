# == Schema Information
#
# Table name: project_members
#
#  id             :integer          not null, primary key
#  project_id     :integer
#  member_user_id :integer
#  sort_order     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ProjectMember < ActiveRecord::Base
  belongs_to :project
end
