# == Schema Information
#
# Table name: categories_mls
#
#  id          :integer          not null, primary key
#  category_id :integer
#  language_id :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CategoriesMl < ActiveRecord::Base
  belongs_to :category

  include MlCommon
end
