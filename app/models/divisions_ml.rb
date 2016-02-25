# == Schema Information
#
# Table name: divisions_mls
#
#  id          :integer          not null, primary key
#  division_id :integer
#  language_id :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DivisionsMl < ActiveRecord::Base
  belongs_to :division

  include MlCommon
end
