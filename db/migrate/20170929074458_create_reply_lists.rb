class CreateReplyLists < ActiveRecord::Migration[5.1]
  def change
    create_table :reply_lists do |t|
      t.text :reply
      t.integer :count
      t.datetime :created_time

      t.timestamps
    end
  end
end
