class Comment < ActiveRecord::Base
  has_many :children, -> {order(:comment_datetime)}, class_name: "Comment", foreign_key: :parent_comment_id
  belongs_to :parent, class_name: "Comment", foreign_key: :parent_comment_id
end
