class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_id
      t.string :msg_id
      t.string :user_id
      t.datetime :time
      t.text :content
      t.text :like

      t.timestamps
    end
  end
end
