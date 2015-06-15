class User < ActiveRecord::Base
   attr_accessible :user_id, :friend_id
   serialize :friend_id, Array
   validates_uniqueness_of :user_id
   has_many :msgs
end
