# == Schema Information
#
# Table name: message_details
#
#  id             :integer          not null, primary key
#  message_id     :integer
#  sender_user_id :integer
#  sent_datetime  :datetime
#  body           :text
#  read_flg       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class MessageDetail < ActiveRecord::Base
end
