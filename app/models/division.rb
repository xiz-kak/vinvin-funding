# == Schema Information
#
# Table name: divisions
#
#  id          :integer          not null, primary key
#  code        :integer
#  val         :integer
#  sort_order  :integer
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Division < ActiveRecord::Base
  has_many :divisions_mls

  class << self
    def val_name(code, val, locale)
      div = Division.find_by(code: code, val: val)
      div.divisions_mls.localed(locale).name
    end

    def gender_name_to_val(gender)
      if gender.blank?
        return nil
      elsif gender == 'male'
        return 1
      elsif gender == 'female'
        return 2
      else
        return 3
      end
    end
  end
end
