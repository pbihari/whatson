class AddIndextoEvents < ActiveRecord::Migration
  def change
  	add_index :events, :id 
  	add_index :events, :title 
  	add_index :events, :description
  	add_index :events, :city
  	add_index :events, :postcode
  	add_index :events, :venue
  	add_index :events, :start
  end
end
