class MsgAddLink < ActiveRecord::Migration
  def change
  	add_column :msgs, :link, :string
  end
end
