class CreateMsgs < ActiveRecord::Migration
  def change
    create_table :msgs do |t|
      t.string :id
      t.string :msg_id
      t.string :title
      t.text :content
      t.datetime :start_time
      t.datetime :dead_time
      t.text :like
      t.text :lol
      t.text :vote_yes
      t.text :vote_no
      t.text :conclusion

      t.timestamps
    end
  end
end
