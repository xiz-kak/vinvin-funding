# == Schema Information
#
# Table name: shipping_destinations
#
#  id            :integer          not null, primary key
#  reward_id     :integer
#  sort_order    :integer
#  nation_id     :integer
#  shipping_rate :decimal(10, 2)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ShippingDestination < ActiveRecord::Base
end
