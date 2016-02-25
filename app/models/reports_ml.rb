# == Schema Information
#
# Table name: reports_mls
#
#  id          :integer          not null, primary key
#  report_id   :integer
#  language_id :integer
#  title       :string
#  image_path  :string
#  body        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ReportsMl < ActiveRecord::Base
  belongs_to :report

  include MlCommon
end
