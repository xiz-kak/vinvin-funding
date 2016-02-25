# == Schema Information
#
# Table name: news_mls
#
#  id          :integer          not null, primary key
#  new_id      :integer
#  language_id :integer
#  title       :string
#  body        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class NewsMl < ActiveRecord::Base
  belongs_to :new

  include MlCommon
end
