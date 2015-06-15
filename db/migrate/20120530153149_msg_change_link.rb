class MsgChangeLink < ActiveRecord::Migration
  def change
    change_column :msgs, :link, :text, :limit => nil
  end
end
