# == Schema Information
#
# Table name: payment_vendors_mls
#
#  id                :integer          not null, primary key
#  payment_vendor_id :integer
#  language_id       :integer
#  name              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class PaymentVendorsMl < ActiveRecord::Base
  belongs_to :payment_vendor

  include MlCommon
end
