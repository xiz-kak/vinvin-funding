# == Schema Information
#
# Table name: rewards
#
#  id                            :integer          not null, primary key
#  project_id                    :integer
#  sort_order                    :integer
#  price                         :decimal(10, 2)
#  estimated_delivery_year       :integer
#  estimated_delivery_month      :integer
#  estimated_delivery_detail_div :integer
#  ships_to_div                  :integer
#  max_count                     :integer
#  status_div                    :integer
#  applied_datetime              :datetime
#  approved_datetime             :datetime
#  approver_staff_id             :integer
#  begin_datetime                :datetime
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#

class Reward < ActiveRecord::Base
  has_many :rewards_mls

  belongs_to :project

  def ml(locale)
    self.rewards_mls.localed(self.project.locale_for_view(locale))
  end
end
