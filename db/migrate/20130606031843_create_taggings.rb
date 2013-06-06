class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :event_id
      t.integer :category_id

      t.timestamps
    end
    add_index :taggings, :event_id
    add_index :taggings, :category_id
  end
end
