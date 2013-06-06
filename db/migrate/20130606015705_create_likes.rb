class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end

    add_index :likes, :user_id
    add_index :likes, :event_id
    add_index :likes, [:user_id, :event_id], unique: true
  end
end
