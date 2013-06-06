class AddUserEventToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :user_id, :integer
    add_index :photos, :user_id
    add_column :photos, :event_id, :integer
    add_index :photos, :event_id
  end
end
