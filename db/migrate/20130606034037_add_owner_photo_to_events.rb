class AddOwnerPhotoToEvents < ActiveRecord::Migration
  def change
    add_column :events, :owner, :integer
    add_index :events, :owner
    add_column :events, :event_photo, :integer
  end
end
