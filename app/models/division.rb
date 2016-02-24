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
