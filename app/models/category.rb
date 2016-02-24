class Category < ActiveRecord::Base
  has_many :categories_mls

  def ml(locale)
    categories_mls.localed(locale)
  end

  def Category.n(category_id, locale)
    Category.find(category_id).categories_mls.localed(locale).name
  end
end
