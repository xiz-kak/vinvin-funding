# == Schema Information
#
# Table name: nations
#
#  id         :integer          not null, primary key
#  sort_order :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Nation < ActiveRecord::Base
end
