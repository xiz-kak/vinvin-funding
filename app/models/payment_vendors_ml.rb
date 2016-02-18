class PaymentVendorsMl < ActiveRecord::Base
  belongs_to :payment_vendor

  include MlCommon
end
