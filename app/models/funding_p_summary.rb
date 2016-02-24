# == Schema Information
#
# Table name: funding_p_summaries
#
#  id            :integer          not null, primary key
#  project_id    :integer
#  funded_count  :integer
#  backer_count  :integer
#  funded_amount :decimal(10, 2)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  goal_amount   :decimal(10, 2)
#  achieved      :float
#

class FundingPSummary < ActiveRecord::Base
  belongs_to :project
end
