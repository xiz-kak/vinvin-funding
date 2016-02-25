# == Schema Information
#
# Table name: ranking_details
#
#  id               :integer          not null, primary key
#  ranking_id       :integer
#  ranking_type_div :integer
#  ranked_order     :integer
#  project_id       :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class RankingDetail < ActiveRecord::Base
  belongs_to :ranking
end
