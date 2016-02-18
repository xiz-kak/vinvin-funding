class DivisionsMl < ActiveRecord::Base
  belongs_to :division

  include MlCommon
end
