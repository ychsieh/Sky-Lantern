class ChangeFriendLimit < ActiveRecord::Migration
  def change
    change_column :users, :friend_id, :text, :limit => nil
  end
end
