class ReportMl < ActiveRecord::Base
  belongs_to :report

  include MlCommon
end
