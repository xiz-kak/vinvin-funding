class Reward < ActiveRecord::Base
  belongs_to :project
  has_many :rewards_mls
end
