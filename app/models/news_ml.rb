class NewsMl < ActiveRecord::Base
  belongs_to :new

  include MlCommon
end
