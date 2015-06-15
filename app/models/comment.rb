class Comment < ActiveRecord::Base
  attr_accessible :comment_id, :content, :like, :msg_id, :time, :user_id, :user_name
  validates_uniqueness_of :comment_id
  serialize :like, Array
  belongs_to :msg
end
