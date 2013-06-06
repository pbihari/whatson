class AddParentToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :parent_id, :integer

    add_index :categories, :parent_id
    add_index :categories, :id
    add_index :categories, :name
  end
end
