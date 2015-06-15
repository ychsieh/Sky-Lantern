class Msg < ActiveRecord::Base
  attr_accessible :conclusion, :content, :dead_time, :user_id, :like, :lol, :msg_id, :start_time, :title, :vote_no, :vote_yes, :color, :user_name, :link
  validates_uniqueness_of :msg_id
  serialize :like, Array
  serialize :lol, Array
  serialize :vote_yes, Array
  serialize :vote_no, Array
  belongs_to :user
  has_many :comments
end
