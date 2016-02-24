# == Schema Information
#
# Table name: currencies_mls
#
#  id          :integer          not null, primary key
#  currency_id :integer
#  language_id :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CurrenciesMl < ActiveRecord::Base
  belongs_to :currency

  include MlCommon
end
