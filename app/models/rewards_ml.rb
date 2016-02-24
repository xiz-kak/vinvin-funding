# == Schema Information
#
# Table name: rewards_mls
#
#  id          :integer          not null, primary key
#  reward_id   :integer
#  language_id :integer
#  title       :string
#  image_path  :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class RewardsMl < ActiveRecord::Base
  belongs_to :reward

  include MlCommon
end
