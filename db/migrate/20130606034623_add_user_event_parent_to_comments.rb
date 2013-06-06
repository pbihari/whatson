class AddUserEventParentToComments < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    add_index :posts, :user_id
    add_column :posts, :event_id, :integer
    add_index :posts, :event_id
    add_column :posts, :predecessor_comment, :integer
    add_index :posts, :predecessor_comment
  end
end
