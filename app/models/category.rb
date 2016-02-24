# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  sort_order :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  has_many :categories_mls

  def ml(locale)
    categories_mls.localed(locale)
  end

  def Category.n(category_id, locale)
    Category.find(category_id).categories_mls.localed(locale).name
  end
end
