class MsgChange < ActiveRecord::Migration
  def change
  	add_column :msgs, :timeSetSelect, :string
  	add_column :msgs, :beforeDate, :string
  	add_column :msgs, :beforeTime, :string
  	add_column :msgs, :afterTime, :string
  	add_column :msgs, :afterTimeUnit, :string
  end
end
