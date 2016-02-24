# == Schema Information
#
# Table name: project_details
#
#  id          :integer          not null, primary key
#  project_id  :integer
#  language_id :integer
#  sort_order  :integer
#  title       :string
#  description :text
#  image_path  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ProjectDetail < ActiveRecord::Base
  belongs_to :project

  scope :sorted_localed, -> (locale){where(language_id: Language.locale_to_lang(locale)).order(:sort_order)}
end
