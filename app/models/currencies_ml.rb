class CurrenciesMl < ActiveRecord::Base
  belongs_to :currency

  include MlCommon
end
