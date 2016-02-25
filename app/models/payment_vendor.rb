# == Schema Information
#
# Table name: payment_vendors
#
#  id              :integer          not null, primary key
#  sort_order      :integer
#  logo_image_path :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class PaymentVendor < ActiveRecord::Base
  has_many :payment_vendors
end
