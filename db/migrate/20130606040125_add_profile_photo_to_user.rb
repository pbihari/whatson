class AddProfilePhotoToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_photo, :integer
  end
end
