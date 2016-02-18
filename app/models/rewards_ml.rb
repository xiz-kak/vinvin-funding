class RewardsMl < ActiveRecord::Base
  belongs_to :reward

  include MlCommon
end
