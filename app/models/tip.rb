# == Schema Information
#
# Table name: tips
#
#  id               :integer          not null, primary key
#  tips_datetime    :datetime
#  receiver_user_id :integer
#  body             :text
#  read_flg         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Tip < ActiveRecord::Base
end
