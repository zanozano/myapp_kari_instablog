class AddInstablogIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :instablog_id, :bigint
    add_index :comments, :instablog_id
  end
end
