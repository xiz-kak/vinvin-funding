# == Schema Information
#
# Table name: funding_r_summaries
#
#  id            :integer          not null, primary key
#  project_id    :integer
#  reward_id     :integer
#  funded_count  :integer
#  backer_count  :integer
#  funded_amount :decimal(10, 2)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class FundingRSummary < ActiveRecord::Base
end
