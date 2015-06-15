class MsgAddColor < ActiveRecord::Migration
  def change
  	add_column :msgs, :color, :string
  end
end
