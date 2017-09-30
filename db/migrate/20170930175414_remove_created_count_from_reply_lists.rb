class RemoveCreatedCountFromReplyLists < ActiveRecord::Migration[5.1]
  def change
    remove_column :reply_lists, :created_time, :datetime
  end
end
