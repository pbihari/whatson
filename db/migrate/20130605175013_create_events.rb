class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start
      t.datetime :finish
      t.text :description
      t.string :website
      t.string :venue
      t.string :city
      t.string :postcode
      t.integer :click_count

      t.timestamps
    end
  end
end
