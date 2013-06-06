class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :caption
      t.binary :image

      t.timestamps
    end
  end
end
