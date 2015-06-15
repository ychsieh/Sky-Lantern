class ChangeFriendId < ActiveRecord::Migration
  def change
    change_column :users, :friend_id, :text
  end
end
