# == Schema Information
#
# Table name: fundings
#
#  id                  :integer          not null, primary key
#  project_id          :integer
#  reward_id           :integer
#  backer_user_id      :integer
#  fund_datetime       :datetime
#  fund_amount         :decimal(10, 2)
#  shipping_rate       :decimal(10, 2)
#  total_amount        :decimal(10, 2)
#  payment_method_div  :integer
#  payment_vendor_id   :integer
#  shipping_first_name :string
#  shipping_last_name  :string
#  shipping_tel        :string
#  shipping_nation_id  :integer
#  shipping_zip_code   :string
#  shipping_address1   :string
#  shipping_address2   :string
#  shipping_address3   :string
#  shipping_address4   :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Funding < ActiveRecord::Base
end
