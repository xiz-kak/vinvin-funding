# == Schema Information
#
# Table name: friends
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  friend_user_id :integer
#  status_div     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Friend < ActiveRecord::Base
end
