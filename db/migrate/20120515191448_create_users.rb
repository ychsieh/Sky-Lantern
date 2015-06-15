class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :friend_id
      t.timestamps
    end
    change_column :users, :friend_id, :text 
  end
end
