class CategoriesMl < ActiveRecord::Base
  belongs_to :category

  include MlCommon
end
