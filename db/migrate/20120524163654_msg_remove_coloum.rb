class MsgRemoveColoum < ActiveRecord::Migration
  def change
  	remove_column :msgs, :timeSetSelect
  	remove_column :msgs, :beforeDate
  	remove_column :msgs, :beforeTime
  	remove_column :msgs, :afterTime
  	remove_column :msgs, :afterTimeUnit
  end
end
