class MsgAddUserName < ActiveRecord::Migration
  def change
  	add_column :msgs, :user_name, :string
  end
end
