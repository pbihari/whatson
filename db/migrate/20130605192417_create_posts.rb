class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :is_locked
      t.string :type

      t.timestamps
    end
  end
end
