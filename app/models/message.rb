# == Schema Information
#
# Table name: messages
#
#  id             :integer          not null, primary key
#  project_id     :integer
#  backer_user_id :integer
#  title          :string
#  begin_datetime :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Message < ActiveRecord::Base
end
