# == Schema Information
#
# Table name: comments
#
#  id                :integer          not null, primary key
#  project_id        :integer
#  parent_comment_id :integer
#  comment_user_id   :integer
#  comment_datetime  :datetime
#  comment_body      :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Comment < ActiveRecord::Base
  has_many :children, -> {order(:comment_datetime)}, class_name: "Comment", foreign_key: :parent_comment_id
  belongs_to :parent, class_name: "Comment", foreign_key: :parent_comment_id
end
