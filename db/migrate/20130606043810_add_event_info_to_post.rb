class AddEventInfoToPost < ActiveRecord::Migration
  def change
    add_column :posts, :is_event_info, :boolean
  end
end
