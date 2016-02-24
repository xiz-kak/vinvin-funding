# == Schema Information
#
# Table name: notifications
#
#  id              :integer          not null, primary key
#  project_id      :integer
#  notify_datetime :datetime
#  title           :string
#  body            :text
#  read_flg        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Notification < ActiveRecord::Base
end
