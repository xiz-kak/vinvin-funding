# == Schema Information
#
# Table name: currencies
#
#  id         :integer          not null, primary key
#  sort_order :integer
#  code       :string
#  symbol     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Currency < ActiveRecord::Base
  has_many :currencies_mls
end
